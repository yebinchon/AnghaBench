
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ena_com_aenq {int * entries; int mem_handle; int dma_addr; int q_depth; } ;
struct ena_com_admin_sq {int * entries; int mem_handle; int dma_addr; } ;
struct ena_com_admin_cq {int * entries; int mem_handle; int dma_addr; } ;
struct ena_com_admin_queue {int q_lock; int q_depth; TYPE_1__* comp_ctx; struct ena_com_admin_sq sq; struct ena_com_admin_cq cq; } ;
struct ena_com_dev {int dmadev; struct ena_com_aenq aenq; struct ena_com_admin_queue admin_queue; } ;
struct TYPE_2__ {int wait_event; } ;


 int ADMIN_AENQ_SIZE (int ) ;
 int ADMIN_CQ_SIZE (int ) ;
 int ADMIN_SQ_SIZE (int ) ;
 int ENA_MEM_FREE (int ,TYPE_1__*) ;
 int ENA_MEM_FREE_COHERENT (int ,int ,int *,int ,int ) ;
 int ENA_SPINLOCK_DESTROY (int ) ;
 int ENA_WAIT_EVENT_DESTROY (int ) ;

void ena_com_admin_destroy(struct ena_com_dev *ena_dev)
{
 struct ena_com_admin_queue *admin_queue = &ena_dev->admin_queue;
 struct ena_com_admin_cq *cq = &admin_queue->cq;
 struct ena_com_admin_sq *sq = &admin_queue->sq;
 struct ena_com_aenq *aenq = &ena_dev->aenq;
 u16 size;

 ENA_WAIT_EVENT_DESTROY(admin_queue->comp_ctx->wait_event);
 if (admin_queue->comp_ctx)
  ENA_MEM_FREE(ena_dev->dmadev, admin_queue->comp_ctx);
 admin_queue->comp_ctx = ((void*)0);
 size = ADMIN_SQ_SIZE(admin_queue->q_depth);
 if (sq->entries)
  ENA_MEM_FREE_COHERENT(ena_dev->dmadev, size, sq->entries,
          sq->dma_addr, sq->mem_handle);
 sq->entries = ((void*)0);

 size = ADMIN_CQ_SIZE(admin_queue->q_depth);
 if (cq->entries)
  ENA_MEM_FREE_COHERENT(ena_dev->dmadev, size, cq->entries,
          cq->dma_addr, cq->mem_handle);
 cq->entries = ((void*)0);

 size = ADMIN_AENQ_SIZE(aenq->q_depth);
 if (ena_dev->aenq.entries)
  ENA_MEM_FREE_COHERENT(ena_dev->dmadev, size, aenq->entries,
          aenq->dma_addr, aenq->mem_handle);
 aenq->entries = ((void*)0);
 ENA_SPINLOCK_DESTROY(admin_queue->q_lock);
}
