
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_softc {int ring_size_order; } ;
struct ccp_queue {struct ccp_softc* cq_softc; } ;


 int ccp_queue_get_active (struct ccp_queue*) ;

__attribute__((used)) static inline unsigned
ccp_queue_get_ring_space(struct ccp_queue *qp)
{
 struct ccp_softc *sc;

 sc = qp->cq_softc;
 return ((1 << sc->ring_size_order) - ccp_queue_get_active(qp) - 1);
}
