
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * base_buffer; } ;
struct TYPE_5__ {int * virt_addr; int mem_handle; int phys_addr; } ;
struct ena_com_io_sq {size_t desc_entry_size; size_t q_depth; TYPE_3__ bounce_buf_ctrl; TYPE_2__ desc_addr; } ;
struct TYPE_4__ {int * virt_addr; int mem_handle; int phys_addr; } ;
struct ena_com_io_cq {size_t cdesc_entry_size_in_bytes; size_t q_depth; TYPE_1__ cdesc_addr; } ;
struct ena_com_dev {int dmadev; } ;


 int ENA_MEM_FREE (int ,int *) ;
 int ENA_MEM_FREE_COHERENT (int ,size_t,int *,int ,int ) ;

__attribute__((used)) static void ena_com_io_queue_free(struct ena_com_dev *ena_dev,
      struct ena_com_io_sq *io_sq,
      struct ena_com_io_cq *io_cq)
{
 size_t size;

 if (io_cq->cdesc_addr.virt_addr) {
  size = io_cq->cdesc_entry_size_in_bytes * io_cq->q_depth;

  ENA_MEM_FREE_COHERENT(ena_dev->dmadev,
          size,
          io_cq->cdesc_addr.virt_addr,
          io_cq->cdesc_addr.phys_addr,
          io_cq->cdesc_addr.mem_handle);

  io_cq->cdesc_addr.virt_addr = ((void*)0);
 }

 if (io_sq->desc_addr.virt_addr) {
  size = io_sq->desc_entry_size * io_sq->q_depth;

  ENA_MEM_FREE_COHERENT(ena_dev->dmadev,
          size,
          io_sq->desc_addr.virt_addr,
          io_sq->desc_addr.phys_addr,
          io_sq->desc_addr.mem_handle);

  io_sq->desc_addr.virt_addr = ((void*)0);
 }

 if (io_sq->bounce_buf_ctrl.base_buffer) {
  ENA_MEM_FREE(ena_dev->dmadev, io_sq->bounce_buf_ctrl.base_buffer);
  io_sq->bounce_buf_ctrl.base_buffer = ((void*)0);
 }
}
