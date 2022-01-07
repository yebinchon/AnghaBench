
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_queue {scalar_t__ cq_tail; scalar_t__ cq_acq_tail; int cq_lock; } ;


 int MA_OWNED ;
 int ccp_queue_write_tail (struct ccp_queue*) ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock (int *) ;
 int wmb () ;

void
ccp_queue_release(struct ccp_queue *qp)
{

 mtx_assert(&qp->cq_lock, MA_OWNED);
 if (qp->cq_tail != qp->cq_acq_tail) {
  wmb();
  ccp_queue_write_tail(qp);
 }
 mtx_unlock(&qp->cq_lock);
}
