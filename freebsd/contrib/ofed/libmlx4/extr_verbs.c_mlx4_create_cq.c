
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq_init_attr_ex {int cqe; int comp_vector; int wc_flags; struct ibv_comp_channel* channel; } ;
struct ibv_cq_ex {int dummy; } ;
struct ibv_cq {int dummy; } ;
struct ibv_context {int dummy; } ;
struct ibv_comp_channel {int dummy; } ;


 int IBV_WC_STANDARD_FLAGS ;
 struct ibv_cq_ex* create_cq (struct ibv_context*,struct ibv_cq_init_attr_ex*,int ) ;
 struct ibv_cq* ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;

struct ibv_cq *mlx4_create_cq(struct ibv_context *context, int cqe,
         struct ibv_comp_channel *channel,
         int comp_vector)
{
 struct ibv_cq_ex *cq;
 struct ibv_cq_init_attr_ex cq_attr = {.cqe = cqe, .channel = channel,
           .comp_vector = comp_vector,
           .wc_flags = IBV_WC_STANDARD_FLAGS};

 cq = create_cq(context, &cq_attr, 0);
 return cq ? ibv_cq_ex_to_cq(cq) : ((void*)0);
}
