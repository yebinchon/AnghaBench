
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq_1_0 {int cqe; struct ibv_cq* real_cq; void* cq_context; struct ibv_context_1_0* context; } ;
struct ibv_cq {struct ibv_cq_1_0* cq_context; } ;
struct ibv_context_1_0 {int real_context; } ;
struct ibv_comp_channel {int dummy; } ;


 int free (struct ibv_cq_1_0*) ;
 struct ibv_cq* ibv_create_cq (int ,int,void*,struct ibv_comp_channel*,int) ;
 struct ibv_cq_1_0* malloc (int) ;

struct ibv_cq_1_0 *__ibv_create_cq_1_0(struct ibv_context_1_0 *context, int cqe,
           void *cq_context,
           struct ibv_comp_channel *channel,
           int comp_vector)
{
 struct ibv_cq *real_cq;
 struct ibv_cq_1_0 *cq;

 cq = malloc(sizeof *cq);
 if (!cq)
  return ((void*)0);

 real_cq = ibv_create_cq(context->real_context, cqe, cq_context,
    channel, comp_vector);
 if (!real_cq) {
  free(cq);
  return ((void*)0);
 }

 cq->context = context;
 cq->cq_context = cq_context;
 cq->cqe = cqe;
 cq->real_cq = real_cq;

 real_cq->cq_context = cq;

 return cq;
}
