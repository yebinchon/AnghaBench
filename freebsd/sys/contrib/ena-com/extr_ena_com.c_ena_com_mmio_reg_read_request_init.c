
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_com_mmio_read {int seq_num; int readless_supported; int lock; TYPE_1__* read_resp; int read_resp_mem_handle; int read_resp_dma_addr; } ;
struct ena_com_dev {int dmadev; struct ena_com_mmio_read mmio_read; } ;
struct TYPE_2__ {int req_id; } ;


 int ENA_COM_NO_MEM ;
 int ENA_MEM_ALLOC_COHERENT (int ,int,TYPE_1__*,int ,int ) ;
 int ENA_SPINLOCK_DESTROY (int ) ;
 int ENA_SPINLOCK_INIT (int ) ;
 int ena_com_mmio_reg_read_request_write_dev_addr (struct ena_com_dev*) ;
 scalar_t__ unlikely (int) ;

int ena_com_mmio_reg_read_request_init(struct ena_com_dev *ena_dev)
{
 struct ena_com_mmio_read *mmio_read = &ena_dev->mmio_read;

 ENA_SPINLOCK_INIT(mmio_read->lock);
 ENA_MEM_ALLOC_COHERENT(ena_dev->dmadev,
          sizeof(*mmio_read->read_resp),
          mmio_read->read_resp,
          mmio_read->read_resp_dma_addr,
          mmio_read->read_resp_mem_handle);
 if (unlikely(!mmio_read->read_resp))
  goto err;

 ena_com_mmio_reg_read_request_write_dev_addr(ena_dev);

 mmio_read->read_resp->req_id = 0x0;
 mmio_read->seq_num = 0x0;
 mmio_read->readless_supported = 1;

 return 0;

err:
  ENA_SPINLOCK_DESTROY(mmio_read->lock);
  return ENA_COM_NO_MEM;
}
