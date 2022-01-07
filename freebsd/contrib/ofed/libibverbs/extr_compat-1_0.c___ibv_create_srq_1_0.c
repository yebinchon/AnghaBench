
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_srq_init_attr {int srq_context; } ;
struct ibv_srq_1_0 {struct ibv_srq* real_srq; struct ibv_pd_1_0* pd; int srq_context; int context; } ;
struct ibv_srq {struct ibv_srq_1_0* srq_context; } ;
struct ibv_pd_1_0 {int context; int real_pd; } ;


 int free (struct ibv_srq_1_0*) ;
 struct ibv_srq* ibv_create_srq (int ,struct ibv_srq_init_attr*) ;
 struct ibv_srq_1_0* malloc (int) ;

struct ibv_srq_1_0 *__ibv_create_srq_1_0(struct ibv_pd_1_0 *pd,
      struct ibv_srq_init_attr *srq_init_attr)
{
 struct ibv_srq *real_srq;
 struct ibv_srq_1_0 *srq;

 srq = malloc(sizeof *srq);
 if (!srq)
  return ((void*)0);

 real_srq = ibv_create_srq(pd->real_pd, srq_init_attr);
 if (!real_srq) {
  free(srq);
  return ((void*)0);
 }

 srq->context = pd->context;
 srq->srq_context = srq_init_attr->srq_context;
 srq->pd = pd;
 srq->real_srq = real_srq;

 real_srq->srq_context = srq;

 return srq;
}
