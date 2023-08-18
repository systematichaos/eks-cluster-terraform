module "eks_blueprints_addons" {
    source = "aws-ia/eks-blueprints-addons/aws"
    version = "~> 1.0"
    
    cluster_name = module.eks_blueprints.eks_cluster_id
    cluster_endpoint = module.eks_blueprints.eks_cluster_endpoint
    cluster_version = module.eks_blueprints.eks_cluster_version
    oidc_provider_arn = module.eks_blueprints.eks_oidc_provider_arn

    eks_addons = {
    aws-ebs-csi-driver = {
      most_recent = true
    }
    coredns = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
  }

}





# module "kubernetes_addons" {
#     source = "github.com/aws-ia/terraform-aws-eks-blueprints//modules/kubernetes-addons?ref=v4.25.0"
    

#     eks_cluster_id = module.eks_blueprints.eks_cluster_id

#     #EKS Add-ons

#     enable_amazon_eks_aws_ebs_csi_driver = true    
# }
