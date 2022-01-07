
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_comp_ctx {scalar_t__ status; int comp_status; int cmd_opcode; int wait_event; } ;
struct TYPE_2__ {int no_completion; } ;
struct ena_com_admin_queue {int running_state; int q_lock; TYPE_1__ stats; int completion_timeout; } ;


 scalar_t__ ENA_CMD_COMPLETED ;
 scalar_t__ ENA_CMD_SUBMITTED ;
 int ENA_COM_TIMER_EXPIRED ;
 int ENA_SPINLOCK_LOCK (int ,unsigned long) ;
 int ENA_SPINLOCK_UNLOCK (int ,unsigned long) ;
 int ENA_WAIT_EVENT_WAIT (int ,int ) ;
 int comp_ctxt_release (struct ena_com_admin_queue*,struct ena_comp_ctx*) ;
 int ena_com_comp_status_to_errno (int ) ;
 int ena_com_handle_admin_completion (struct ena_com_admin_queue*) ;
 int ena_trc_err (char*,int ,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ena_com_wait_and_process_admin_cq_interrupts(struct ena_comp_ctx *comp_ctx,
       struct ena_com_admin_queue *admin_queue)
{
 unsigned long flags = 0;
 int ret;

 ENA_WAIT_EVENT_WAIT(comp_ctx->wait_event,
       admin_queue->completion_timeout);






 if (unlikely(comp_ctx->status == ENA_CMD_SUBMITTED)) {
  ENA_SPINLOCK_LOCK(admin_queue->q_lock, flags);
  ena_com_handle_admin_completion(admin_queue);
  admin_queue->stats.no_completion++;
  ENA_SPINLOCK_UNLOCK(admin_queue->q_lock, flags);

  if (comp_ctx->status == ENA_CMD_COMPLETED)
   ena_trc_err("The ena device have completion but the driver didn't receive any MSI-X interrupt (cmd %d)\n",
        comp_ctx->cmd_opcode);
  else
   ena_trc_err("The ena device doesn't send any completion for the admin cmd %d status %d\n",
        comp_ctx->cmd_opcode, comp_ctx->status);

  admin_queue->running_state = 0;
  ret = ENA_COM_TIMER_EXPIRED;
  goto err;
 }

 ret = ena_com_comp_status_to_errno(comp_ctx->comp_status);
err:
 comp_ctxt_release(admin_queue, comp_ctx);
 return ret;
}
