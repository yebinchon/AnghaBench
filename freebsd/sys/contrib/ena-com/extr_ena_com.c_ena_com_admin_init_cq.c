
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ena_com_admin_cq {int phase; scalar_t__ head; int entries; int mem_handle; int dma_addr; } ;
struct ena_com_admin_queue {int q_dmadev; int q_depth; struct ena_com_admin_cq cq; } ;


 int ADMIN_CQ_SIZE (int ) ;
 int ENA_COM_NO_MEM ;
 int ENA_MEM_ALLOC_COHERENT (int ,int ,int ,int ,int ) ;
 int ena_trc_err (char*) ;

__attribute__((used)) static int ena_com_admin_init_cq(struct ena_com_admin_queue *queue)
{
 struct ena_com_admin_cq *cq = &queue->cq;
 u16 size = ADMIN_CQ_SIZE(queue->q_depth);

 ENA_MEM_ALLOC_COHERENT(queue->q_dmadev, size, cq->entries, cq->dma_addr,
          cq->mem_handle);

 if (!cq->entries) {
  ena_trc_err("memory allocation failed\n");
  return ENA_COM_NO_MEM;
 }

 cq->head = 0;
 cq->phase = 1;

 return 0;
}
