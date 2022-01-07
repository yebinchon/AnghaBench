
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dv_cq_init_attr {int dummy; } ;
struct ibv_cq_init_attr_ex {int cq_context; int channel; } ;
struct ibv_cq_ex {int dummy; } ;
struct ibv_context {int dummy; } ;


 int MLX5_CQ_FLAGS_EXTENDED ;
 struct ibv_cq_ex* create_cq (struct ibv_context*,struct ibv_cq_init_attr_ex*,int ,struct mlx5dv_cq_init_attr*) ;
 int ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;
 int verbs_init_cq (int ,struct ibv_context*,int ,int ) ;

struct ibv_cq_ex *mlx5dv_create_cq(struct ibv_context *context,
          struct ibv_cq_init_attr_ex *cq_attr,
          struct mlx5dv_cq_init_attr *mlx5_cq_attr)
{
 struct ibv_cq_ex *cq;

 cq = create_cq(context, cq_attr, MLX5_CQ_FLAGS_EXTENDED, mlx5_cq_attr);
 if (!cq)
  return ((void*)0);

 verbs_init_cq(ibv_cq_ex_to_cq(cq), context,
        cq_attr->channel, cq_attr->cq_context);
 return cq;
}
