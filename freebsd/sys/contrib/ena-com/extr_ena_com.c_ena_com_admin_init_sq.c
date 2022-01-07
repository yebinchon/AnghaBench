
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ena_com_admin_sq {int phase; int * db_addr; scalar_t__ tail; scalar_t__ head; int entries; int mem_handle; int dma_addr; } ;
struct ena_com_admin_queue {int q_dmadev; int q_depth; struct ena_com_admin_sq sq; } ;


 int ADMIN_SQ_SIZE (int ) ;
 int ENA_COM_NO_MEM ;
 int ENA_MEM_ALLOC_COHERENT (int ,int ,int ,int ,int ) ;
 int ena_trc_err (char*) ;

__attribute__((used)) static int ena_com_admin_init_sq(struct ena_com_admin_queue *queue)
{
 struct ena_com_admin_sq *sq = &queue->sq;
 u16 size = ADMIN_SQ_SIZE(queue->q_depth);

 ENA_MEM_ALLOC_COHERENT(queue->q_dmadev, size, sq->entries, sq->dma_addr,
          sq->mem_handle);

 if (!sq->entries) {
  ena_trc_err("memory allocation failed\n");
  return ENA_COM_NO_MEM;
 }

 sq->head = 0;
 sq->tail = 0;
 sq->phase = 1;

 sq->db_addr = ((void*)0);

 return 0;
}
