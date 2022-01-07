
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq_init_attr_ex {int dummy; } ;
struct ibv_cq_ex {int dummy; } ;
struct ibv_context {int dummy; } ;


 int MLX5_CQ_FLAGS_EXTENDED ;
 struct ibv_cq_ex* create_cq (struct ibv_context*,struct ibv_cq_init_attr_ex*,int ,int *) ;

struct ibv_cq_ex *mlx5_create_cq_ex(struct ibv_context *context,
        struct ibv_cq_init_attr_ex *cq_attr)
{
 return create_cq(context, cq_attr, MLX5_CQ_FLAGS_EXTENDED, ((void*)0));
}
