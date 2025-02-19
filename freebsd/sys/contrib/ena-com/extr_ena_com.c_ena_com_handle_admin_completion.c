
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct TYPE_8__ {int completed_cmd; } ;
struct TYPE_7__ {int head; } ;
struct TYPE_6__ {int head; int phase; struct ena_admin_acq_entry* entries; } ;
struct ena_com_admin_queue {int q_depth; TYPE_4__ stats; TYPE_3__ sq; TYPE_2__ cq; } ;
struct TYPE_5__ {int flags; } ;
struct ena_admin_acq_entry {TYPE_1__ acq_common_descriptor; } ;


 int ENA_ADMIN_ACQ_COMMON_DESC_PHASE_MASK ;
 int READ_ONCE8 (int ) ;
 int dma_rmb () ;
 int ena_com_handle_single_admin_completion (struct ena_com_admin_queue*,struct ena_admin_acq_entry*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ena_com_handle_admin_completion(struct ena_com_admin_queue *admin_queue)
{
 struct ena_admin_acq_entry *cqe = ((void*)0);
 u16 comp_num = 0;
 u16 head_masked;
 u8 phase;

 head_masked = admin_queue->cq.head & (admin_queue->q_depth - 1);
 phase = admin_queue->cq.phase;

 cqe = &admin_queue->cq.entries[head_masked];


 while ((READ_ONCE8(cqe->acq_common_descriptor.flags) &
   ENA_ADMIN_ACQ_COMMON_DESC_PHASE_MASK) == phase) {



  dma_rmb();
  ena_com_handle_single_admin_completion(admin_queue, cqe);

  head_masked++;
  comp_num++;
  if (unlikely(head_masked == admin_queue->q_depth)) {
   head_masked = 0;
   phase = !phase;
  }

  cqe = &admin_queue->cq.entries[head_masked];
 }

 admin_queue->cq.head += comp_num;
 admin_queue->cq.phase = phase;
 admin_queue->sq.head += comp_num;
 admin_queue->stats.completed_cmd += comp_num;
}
