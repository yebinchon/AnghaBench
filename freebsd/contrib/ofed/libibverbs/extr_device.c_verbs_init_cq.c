
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq {int cond; int mutex; scalar_t__ async_events_completed; scalar_t__ comp_events_completed; void* cq_context; struct ibv_comp_channel* channel; struct ibv_context* context; } ;
struct ibv_context {int mutex; } ;
struct ibv_comp_channel {int refcnt; } ;


 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void verbs_init_cq(struct ibv_cq *cq, struct ibv_context *context,
         struct ibv_comp_channel *channel,
         void *cq_context)
{
 cq->context = context;
 cq->channel = channel;

 if (cq->channel) {
  pthread_mutex_lock(&context->mutex);
  ++cq->channel->refcnt;
  pthread_mutex_unlock(&context->mutex);
 }

 cq->cq_context = cq_context;
 cq->comp_events_completed = 0;
 cq->async_events_completed = 0;
 pthread_mutex_init(&cq->mutex, ((void*)0));
 pthread_cond_init(&cq->cond, ((void*)0));
}
