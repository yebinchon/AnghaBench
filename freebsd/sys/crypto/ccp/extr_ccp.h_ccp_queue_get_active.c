
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_softc {int ring_size_order; } ;
struct ccp_queue {int cq_tail; int cq_head; struct ccp_softc* cq_softc; } ;



__attribute__((used)) static inline unsigned
ccp_queue_get_active(struct ccp_queue *qp)
{
 struct ccp_softc *sc;

 sc = qp->cq_softc;
 return ((qp->cq_tail - qp->cq_head) & ((1 << sc->ring_size_order) - 1));
}
