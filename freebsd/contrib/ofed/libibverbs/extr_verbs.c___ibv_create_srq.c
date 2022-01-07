
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_srq_init_attr {int srq_context; } ;
struct ibv_srq {int cond; int mutex; scalar_t__ events_completed; struct ibv_pd* pd; int srq_context; TYPE_2__* context; } ;
struct ibv_pd {TYPE_2__* context; } ;
struct TYPE_3__ {struct ibv_srq* (* create_srq ) (struct ibv_pd*,struct ibv_srq_init_attr*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;
 struct ibv_srq* stub1 (struct ibv_pd*,struct ibv_srq_init_attr*) ;

struct ibv_srq *__ibv_create_srq(struct ibv_pd *pd,
     struct ibv_srq_init_attr *srq_init_attr)
{
 struct ibv_srq *srq;

 if (!pd->context->ops.create_srq)
  return ((void*)0);

 srq = pd->context->ops.create_srq(pd, srq_init_attr);
 if (srq) {
  srq->context = pd->context;
  srq->srq_context = srq_init_attr->srq_context;
  srq->pd = pd;
  srq->events_completed = 0;
  pthread_mutex_init(&srq->mutex, ((void*)0));
  pthread_cond_init(&srq->cond, ((void*)0));
 }

 return srq;
}
