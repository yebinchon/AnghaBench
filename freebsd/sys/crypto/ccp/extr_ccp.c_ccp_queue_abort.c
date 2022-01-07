
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccp_queue {unsigned int cq_acq_tail; unsigned int cq_tail; int cq_lock; int * desc_ring; TYPE_1__* cq_softc; } ;
struct TYPE_2__ {int ring_size_order; } ;


 int MA_OWNED ;
 int memset (int *,int ,int) ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock (int *) ;

void
ccp_queue_abort(struct ccp_queue *qp)
{
 unsigned i;

 mtx_assert(&qp->cq_lock, MA_OWNED);


 for (i = qp->cq_acq_tail; i != qp->cq_tail;
     i = (i + 1) % (1 << qp->cq_softc->ring_size_order)) {
  memset(&qp->desc_ring[i], 0, sizeof(qp->desc_ring[i]));
 }
 qp->cq_tail = qp->cq_acq_tail;

 mtx_unlock(&qp->cq_lock);
}
