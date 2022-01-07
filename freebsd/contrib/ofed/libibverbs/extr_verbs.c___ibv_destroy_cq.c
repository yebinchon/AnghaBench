
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ibv_cq {TYPE_2__* context; struct ibv_comp_channel* channel; } ;
struct ibv_comp_channel {TYPE_3__* context; int refcnt; } ;
struct TYPE_6__ {int mutex; } ;
struct TYPE_4__ {int (* destroy_cq ) (struct ibv_cq*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (struct ibv_cq*) ;

int __ibv_destroy_cq(struct ibv_cq *cq)
{
 struct ibv_comp_channel *channel = cq->channel;
 int ret;

 ret = cq->context->ops.destroy_cq(cq);

 if (channel) {
  if (!ret) {
   pthread_mutex_lock(&channel->context->mutex);
   --channel->refcnt;
   pthread_mutex_unlock(&channel->context->mutex);
  }
 }

 return ret;
}
