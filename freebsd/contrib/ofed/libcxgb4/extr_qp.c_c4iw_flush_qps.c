
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flushed; } ;
struct c4iw_qp {int lock; TYPE_1__ wq; } ;
struct c4iw_dev {int max_qp; int lock; struct c4iw_qp** qpid2ptr; } ;


 int c4iw_flush_qp (struct c4iw_qp*) ;
 int pthread_spin_lock (int *) ;
 int pthread_spin_unlock (int *) ;
 scalar_t__ t4_wq_in_error (TYPE_1__*) ;

void c4iw_flush_qps(struct c4iw_dev *dev)
{
 int i;

 pthread_spin_lock(&dev->lock);
 for (i=0; i < dev->max_qp; i++) {
  struct c4iw_qp *qhp = dev->qpid2ptr[i];
  if (qhp) {
   if (!qhp->wq.flushed && t4_wq_in_error(&qhp->wq)) {
    pthread_spin_lock(&qhp->lock);
    c4iw_flush_qp(qhp);
    pthread_spin_unlock(&qhp->lock);
   }
  }
 }
 pthread_spin_unlock(&dev->lock);
}
