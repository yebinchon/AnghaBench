
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq_init_attr_ex {int flags; int comp_mask; int wc_flags; int comp_vector; int channel; int cqe; } ;
struct ibv_cq_ex {int dummy; } ;
struct ibv_context {int dummy; } ;


 int MLX4_CQ_FLAGS_EXTENDED ;
 struct ibv_cq_ex* create_cq (struct ibv_context*,struct ibv_cq_init_attr_ex*,int ) ;

struct ibv_cq_ex *mlx4_create_cq_ex(struct ibv_context *context,
        struct ibv_cq_init_attr_ex *cq_attr)
{




 struct ibv_cq_init_attr_ex cq_attr_c = {.cqe = cq_attr->cqe,
      .channel = cq_attr->channel,
      .comp_vector = cq_attr->comp_vector,
      .wc_flags = cq_attr->wc_flags,
      .comp_mask = cq_attr->comp_mask,
      .flags = cq_attr->flags};

 return create_cq(context, &cq_attr_c, MLX4_CQ_FLAGS_EXTENDED);
}
