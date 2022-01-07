
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ccp_softc {struct ccp_queue* queues; } ;
struct ccp_queue {int lsb_mask; } ;


 int MAX_HW_QUEUES ;
 unsigned int MAX_LSB_REGIONS ;

void
ccp_queue_decode_lsb_regions(struct ccp_softc *sc, uint64_t lsbmask,
    unsigned queue)
{
 struct ccp_queue *qp;
 unsigned i;

 qp = &sc->queues[queue];

 qp->lsb_mask = 0;

 for (i = 0; i < MAX_LSB_REGIONS; i++) {
  if (((1 << queue) & lsbmask) != 0)
   qp->lsb_mask |= (1 << i);
  lsbmask >>= MAX_HW_QUEUES;
 }





 qp->lsb_mask &= ~(1 << 0);
}
