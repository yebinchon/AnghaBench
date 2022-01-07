
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq {unsigned int comp_events_completed; int mutex; int cond; } ;


 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void __ibv_ack_cq_events(struct ibv_cq *cq, unsigned int nevents)
{
 pthread_mutex_lock(&cq->mutex);
 cq->comp_events_completed += nevents;
 pthread_cond_signal(&cq->cond);
 pthread_mutex_unlock(&cq->mutex);
}
