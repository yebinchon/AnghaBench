
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ena_com_aenq {int q_depth; int head; int phase; struct ena_aenq_handlers* aenq_handlers; int dma_addr; int entries; int mem_handle; } ;
struct ena_com_dev {scalar_t__ reg_bar; int bus; struct ena_com_aenq aenq; int dmadev; } ;
struct ena_aenq_handlers {int dummy; } ;
struct ena_admin_aenq_entry {int dummy; } ;


 int ADMIN_AENQ_SIZE (int) ;
 int ENA_ASYNC_QUEUE_DEPTH ;
 int ENA_COM_INVAL ;
 int ENA_COM_NO_MEM ;
 int ENA_DMA_ADDR_TO_UINT32_HIGH (int ) ;
 int ENA_DMA_ADDR_TO_UINT32_LOW (int ) ;
 int ENA_MEM_ALLOC_COHERENT (int ,int ,int ,int ,int ) ;
 scalar_t__ ENA_REGS_AENQ_BASE_HI_OFF ;
 scalar_t__ ENA_REGS_AENQ_BASE_LO_OFF ;
 int ENA_REGS_AENQ_CAPS_AENQ_DEPTH_MASK ;
 int ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_MASK ;
 int ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_SHIFT ;
 scalar_t__ ENA_REGS_AENQ_CAPS_OFF ;
 int ENA_REG_WRITE32 (int ,int,scalar_t__) ;
 int ena_trc_err (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ena_com_admin_init_aenq(struct ena_com_dev *dev,
       struct ena_aenq_handlers *aenq_handlers)
{
 struct ena_com_aenq *aenq = &dev->aenq;
 u32 addr_low, addr_high, aenq_caps;
 u16 size;

 dev->aenq.q_depth = ENA_ASYNC_QUEUE_DEPTH;
 size = ADMIN_AENQ_SIZE(ENA_ASYNC_QUEUE_DEPTH);
 ENA_MEM_ALLOC_COHERENT(dev->dmadev, size,
   aenq->entries,
   aenq->dma_addr,
   aenq->mem_handle);

 if (!aenq->entries) {
  ena_trc_err("memory allocation failed\n");
  return ENA_COM_NO_MEM;
 }

 aenq->head = aenq->q_depth;
 aenq->phase = 1;

 addr_low = ENA_DMA_ADDR_TO_UINT32_LOW(aenq->dma_addr);
 addr_high = ENA_DMA_ADDR_TO_UINT32_HIGH(aenq->dma_addr);

 ENA_REG_WRITE32(dev->bus, addr_low, dev->reg_bar + ENA_REGS_AENQ_BASE_LO_OFF);
 ENA_REG_WRITE32(dev->bus, addr_high, dev->reg_bar + ENA_REGS_AENQ_BASE_HI_OFF);

 aenq_caps = 0;
 aenq_caps |= dev->aenq.q_depth & ENA_REGS_AENQ_CAPS_AENQ_DEPTH_MASK;
 aenq_caps |= (sizeof(struct ena_admin_aenq_entry) <<
  ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_SHIFT) &
  ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_MASK;
 ENA_REG_WRITE32(dev->bus, aenq_caps, dev->reg_bar + ENA_REGS_AENQ_CAPS_OFF);

 if (unlikely(!aenq_handlers)) {
  ena_trc_err("aenq handlers pointer is NULL\n");
  return ENA_COM_INVAL;
 }

 aenq->aenq_handlers = aenq_handlers;

 return 0;
}
