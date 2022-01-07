
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_eth_io_intr_reg {int intr_control; } ;
struct ena_com_io_cq {int unmask_reg; int bus; } ;


 int ENA_REG_WRITE32 (int ,int ,int ) ;

__attribute__((used)) static inline void ena_com_unmask_intr(struct ena_com_io_cq *io_cq,
           struct ena_eth_io_intr_reg *intr_reg)
{
 ENA_REG_WRITE32(io_cq->bus, intr_reg->intr_control, io_cq->unmask_reg);
}
