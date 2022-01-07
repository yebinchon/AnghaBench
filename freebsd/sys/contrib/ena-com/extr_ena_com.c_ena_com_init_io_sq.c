
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ena_eth_io_tx_desc {int dummy; } ;
struct ena_eth_io_rx_desc {int dummy; } ;
struct TYPE_9__ {int desc_list_entry_size; scalar_t__ max_entries_in_tx_burst; int descs_num_before_header; } ;
struct TYPE_7__ {int descs_left_in_line; TYPE_2__* curr_bounce_buf; } ;
struct TYPE_11__ {size_t buffer_size; size_t buffers_num; int base_buffer; scalar_t__ next_to_use; } ;
struct TYPE_8__ {int virt_addr; int mem_handle; int phys_addr; } ;
struct ena_com_io_sq {int desc_entry_size; scalar_t__ direction; size_t q_depth; scalar_t__ mem_queue_type; scalar_t__ entries_in_tx_burst_left; int phase; scalar_t__ next_to_comp; scalar_t__ tail; TYPE_3__ llq_info; TYPE_1__ llq_buf_ctrl; TYPE_6__ bounce_buf_ctrl; TYPE_2__ desc_addr; int bus; scalar_t__ dma_addr_bits; } ;
struct TYPE_10__ {size_t desc_list_entry_size; } ;
struct ena_com_dev {TYPE_4__ llq_info; int dmadev; int bus; scalar_t__ dma_addr_bits; } ;
struct ena_com_create_io_ctx {int numa_node; } ;


 scalar_t__ ENA_ADMIN_PLACEMENT_POLICY_DEV ;
 scalar_t__ ENA_ADMIN_PLACEMENT_POLICY_HOST ;
 size_t ENA_COM_BOUNCE_BUFFER_CNTRL_CNT ;
 scalar_t__ ENA_COM_IO_QUEUE_DIRECTION_TX ;
 int ENA_COM_NO_MEM ;
 int ENA_MEM_ALLOC (int ,size_t) ;
 int ENA_MEM_ALLOC_COHERENT (int ,size_t,int ,int ,int ) ;
 int ENA_MEM_ALLOC_COHERENT_NODE (int ,size_t,int ,int ,int ,int ,int) ;
 int ENA_MEM_ALLOC_NODE (int ,size_t,int ,int ,int) ;
 TYPE_2__* ena_com_get_next_bounce_buffer (TYPE_6__*) ;
 int ena_trc_err (char*) ;
 int memcpy (TYPE_3__*,TYPE_4__*,int) ;
 int memset (TYPE_2__*,int,int) ;

__attribute__((used)) static int ena_com_init_io_sq(struct ena_com_dev *ena_dev,
         struct ena_com_create_io_ctx *ctx,
         struct ena_com_io_sq *io_sq)
{
 size_t size;
 int dev_node = 0;

 memset(&io_sq->desc_addr, 0x0, sizeof(io_sq->desc_addr));

 io_sq->dma_addr_bits = (u8)ena_dev->dma_addr_bits;
 io_sq->desc_entry_size =
  (io_sq->direction == ENA_COM_IO_QUEUE_DIRECTION_TX) ?
  sizeof(struct ena_eth_io_tx_desc) :
  sizeof(struct ena_eth_io_rx_desc);

 size = io_sq->desc_entry_size * io_sq->q_depth;
 io_sq->bus = ena_dev->bus;

 if (io_sq->mem_queue_type == ENA_ADMIN_PLACEMENT_POLICY_HOST) {
  ENA_MEM_ALLOC_COHERENT_NODE(ena_dev->dmadev,
         size,
         io_sq->desc_addr.virt_addr,
         io_sq->desc_addr.phys_addr,
         io_sq->desc_addr.mem_handle,
         ctx->numa_node,
         dev_node);
  if (!io_sq->desc_addr.virt_addr) {
   ENA_MEM_ALLOC_COHERENT(ena_dev->dmadev,
            size,
            io_sq->desc_addr.virt_addr,
            io_sq->desc_addr.phys_addr,
            io_sq->desc_addr.mem_handle);
  }

  if (!io_sq->desc_addr.virt_addr) {
   ena_trc_err("memory allocation failed\n");
   return ENA_COM_NO_MEM;
  }
 }

 if (io_sq->mem_queue_type == ENA_ADMIN_PLACEMENT_POLICY_DEV) {

  io_sq->bounce_buf_ctrl.buffer_size =
   ena_dev->llq_info.desc_list_entry_size;
  io_sq->bounce_buf_ctrl.buffers_num =
   ENA_COM_BOUNCE_BUFFER_CNTRL_CNT;
  io_sq->bounce_buf_ctrl.next_to_use = 0;

  size = io_sq->bounce_buf_ctrl.buffer_size *
   io_sq->bounce_buf_ctrl.buffers_num;

  ENA_MEM_ALLOC_NODE(ena_dev->dmadev,
       size,
       io_sq->bounce_buf_ctrl.base_buffer,
       ctx->numa_node,
       dev_node);
  if (!io_sq->bounce_buf_ctrl.base_buffer)
   io_sq->bounce_buf_ctrl.base_buffer = ENA_MEM_ALLOC(ena_dev->dmadev, size);

  if (!io_sq->bounce_buf_ctrl.base_buffer) {
   ena_trc_err("bounce buffer memory allocation failed\n");
   return ENA_COM_NO_MEM;
  }

  memcpy(&io_sq->llq_info, &ena_dev->llq_info,
         sizeof(io_sq->llq_info));


  io_sq->llq_buf_ctrl.curr_bounce_buf =
   ena_com_get_next_bounce_buffer(&io_sq->bounce_buf_ctrl);
  memset(io_sq->llq_buf_ctrl.curr_bounce_buf,
         0x0, io_sq->llq_info.desc_list_entry_size);
  io_sq->llq_buf_ctrl.descs_left_in_line =
   io_sq->llq_info.descs_num_before_header;

  if (io_sq->llq_info.max_entries_in_tx_burst > 0)
   io_sq->entries_in_tx_burst_left =
    io_sq->llq_info.max_entries_in_tx_burst;
 }

 io_sq->tail = 0;
 io_sq->next_to_comp = 0;
 io_sq->phase = 1;

 return 0;
}
