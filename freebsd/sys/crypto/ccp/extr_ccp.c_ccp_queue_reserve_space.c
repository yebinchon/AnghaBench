
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_softc {int ring_size_order; } ;
struct ccp_queue {int cq_waiting; int cq_lock; int cq_tail; struct ccp_softc* cq_softc; } ;


 int EAGAIN ;
 int EINVAL ;
 int MA_OWNED ;
 int M_WAITOK ;
 unsigned int ccp_queue_get_ring_space (struct ccp_queue*) ;
 int msleep (int *,int *,int ,char*,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
ccp_queue_reserve_space(struct ccp_queue *qp, unsigned n, int mflags)
{
 struct ccp_softc *sc;

 mtx_assert(&qp->cq_lock, MA_OWNED);
 sc = qp->cq_softc;

 if (n < 1 || n >= (1 << sc->ring_size_order))
  return (EINVAL);

 while (1) {
  if (ccp_queue_get_ring_space(qp) >= n)
   return (0);
  if ((mflags & M_WAITOK) == 0)
   return (EAGAIN);
  qp->cq_waiting = 1;
  msleep(&qp->cq_tail, &qp->cq_lock, 0, "ccpqfull", 0);
 }
}
