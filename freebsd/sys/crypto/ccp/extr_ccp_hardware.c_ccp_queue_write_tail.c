
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ccp_queue {int cq_tail; scalar_t__ desc_ring_bus_addr; int cq_qindex; int cq_softc; } ;


 int CMD_Q_TAIL_LO_BASE ;
 int Q_DESC_SIZE ;
 int ccp_write_queue_4 (int ,int ,int ,scalar_t__) ;

void
ccp_queue_write_tail(struct ccp_queue *qp)
{
 ccp_write_queue_4(qp->cq_softc, qp->cq_qindex, CMD_Q_TAIL_LO_BASE,
     ((uint32_t)qp->desc_ring_bus_addr) + (Q_DESC_SIZE * qp->cq_tail));
}
