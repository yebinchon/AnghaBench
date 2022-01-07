
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_wq {int mutex; int cond; int events_completed; } ;
struct ibv_srq {int mutex; int cond; int events_completed; } ;
struct ibv_qp {int mutex; int cond; int events_completed; } ;
struct ibv_cq {int mutex; int cond; int async_events_completed; } ;
struct TYPE_2__ {struct ibv_wq* wq; struct ibv_srq* srq; struct ibv_qp* qp; struct ibv_cq* cq; } ;
struct ibv_async_event {int event_type; TYPE_1__ element; } ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void __ibv_ack_async_event(struct ibv_async_event *event)
{
 switch (event->event_type) {
 case 138:
 {
  struct ibv_cq *cq = event->element.cq;

  pthread_mutex_lock(&cq->mutex);
  ++cq->async_events_completed;
  pthread_cond_signal(&cq->cond);
  pthread_mutex_unlock(&cq->mutex);

  return;
 }

 case 134:
 case 132:
 case 135:
 case 139:
 case 131:
 case 137:
 case 136:
 case 133:
 {
  struct ibv_qp *qp = event->element.qp;

  pthread_mutex_lock(&qp->mutex);
  ++qp->events_completed;
  pthread_cond_signal(&qp->cond);
  pthread_mutex_unlock(&qp->mutex);

  return;
 }

 case 130:
 case 129:
 {
  struct ibv_srq *srq = event->element.srq;

  pthread_mutex_lock(&srq->mutex);
  ++srq->events_completed;
  pthread_cond_signal(&srq->cond);
  pthread_mutex_unlock(&srq->mutex);

  return;
 }

 case 128:
 {
  struct ibv_wq *wq = event->element.wq;

  pthread_mutex_lock(&wq->mutex);
  ++wq->events_completed;
  pthread_cond_signal(&wq->cond);
  pthread_mutex_unlock(&wq->mutex);

  return;
 }

 default:
  return;
 }
}
