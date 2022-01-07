
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_mmio_read {int lock; int * read_resp; int read_resp_mem_handle; int read_resp_dma_addr; } ;
struct ena_com_dev {int dmadev; scalar_t__ reg_bar; int bus; struct ena_com_mmio_read mmio_read; } ;


 int ENA_MEM_FREE_COHERENT (int ,int,int *,int ,int ) ;
 scalar_t__ ENA_REGS_MMIO_RESP_HI_OFF ;
 scalar_t__ ENA_REGS_MMIO_RESP_LO_OFF ;
 int ENA_REG_WRITE32 (int ,int,scalar_t__) ;
 int ENA_SPINLOCK_DESTROY (int ) ;

void ena_com_mmio_reg_read_request_destroy(struct ena_com_dev *ena_dev)
{
 struct ena_com_mmio_read *mmio_read = &ena_dev->mmio_read;

 ENA_REG_WRITE32(ena_dev->bus, 0x0, ena_dev->reg_bar + ENA_REGS_MMIO_RESP_LO_OFF);
 ENA_REG_WRITE32(ena_dev->bus, 0x0, ena_dev->reg_bar + ENA_REGS_MMIO_RESP_HI_OFF);

 ENA_MEM_FREE_COHERENT(ena_dev->dmadev,
         sizeof(*mmio_read->read_resp),
         mmio_read->read_resp,
         mmio_read->read_resp_dma_addr,
         mmio_read->read_resp_mem_handle);

 mmio_read->read_resp = ((void*)0);
 ENA_SPINLOCK_DESTROY(mmio_read->lock);
}
