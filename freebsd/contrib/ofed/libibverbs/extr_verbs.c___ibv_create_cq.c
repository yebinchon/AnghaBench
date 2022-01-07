
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_cq {int dummy; } ;
struct TYPE_2__ {struct ibv_cq* (* create_cq ) (struct ibv_context*,int,struct ibv_comp_channel*,int) ;} ;
struct ibv_context {TYPE_1__ ops; } ;
struct ibv_comp_channel {int dummy; } ;


 struct ibv_cq* stub1 (struct ibv_context*,int,struct ibv_comp_channel*,int) ;
 int verbs_init_cq (struct ibv_cq*,struct ibv_context*,struct ibv_comp_channel*,void*) ;

struct ibv_cq *__ibv_create_cq(struct ibv_context *context, int cqe, void *cq_context,
          struct ibv_comp_channel *channel, int comp_vector)
{
 struct ibv_cq *cq;

 cq = context->ops.create_cq(context, cqe, channel, comp_vector);

 if (cq)
  verbs_init_cq(cq, context, channel, cq_context);

 return cq;
}
