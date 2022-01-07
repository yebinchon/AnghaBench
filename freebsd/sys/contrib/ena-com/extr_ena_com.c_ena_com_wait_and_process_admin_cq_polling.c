
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_comp_ctx {scalar_t__ status; int comp_status; } ;
struct TYPE_2__ {int aborted_cmd; int no_completion; } ;
struct ena_com_admin_queue {int running_state; int q_lock; TYPE_1__ stats; int completion_timeout; } ;


 scalar_t__ ENA_CMD_ABORTED ;
 scalar_t__ ENA_CMD_COMPLETED ;
 scalar_t__ ENA_CMD_SUBMITTED ;
 int ENA_COM_NO_DEVICE ;
 int ENA_COM_TIMER_EXPIRED ;
 unsigned long ENA_GET_SYSTEM_TIMEOUT (int ) ;
 int ENA_MSLEEP (int ) ;
 int ENA_POLL_MS ;
 int ENA_SPINLOCK_LOCK (int ,unsigned long) ;
 int ENA_SPINLOCK_UNLOCK (int ,unsigned long) ;
 scalar_t__ ENA_TIME_EXPIRE (unsigned long) ;
 int ENA_WARN (int,char*,scalar_t__) ;
 int comp_ctxt_release (struct ena_com_admin_queue*,struct ena_comp_ctx*) ;
 int ena_com_comp_status_to_errno (int ) ;
 int ena_com_handle_admin_completion (struct ena_com_admin_queue*) ;
 int ena_trc_err (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ena_com_wait_and_process_admin_cq_polling(struct ena_comp_ctx *comp_ctx,
           struct ena_com_admin_queue *admin_queue)
{
 unsigned long flags = 0;
 unsigned long timeout;
 int ret;

 timeout = ENA_GET_SYSTEM_TIMEOUT(admin_queue->completion_timeout);

 while (1) {
                ENA_SPINLOCK_LOCK(admin_queue->q_lock, flags);
                ena_com_handle_admin_completion(admin_queue);
                ENA_SPINLOCK_UNLOCK(admin_queue->q_lock, flags);

                if (comp_ctx->status != ENA_CMD_SUBMITTED)
   break;

  if (ENA_TIME_EXPIRE(timeout)) {
   ena_trc_err("Wait for completion (polling) timeout\n");

   ENA_SPINLOCK_LOCK(admin_queue->q_lock, flags);
   admin_queue->stats.no_completion++;
   admin_queue->running_state = 0;
   ENA_SPINLOCK_UNLOCK(admin_queue->q_lock, flags);

   ret = ENA_COM_TIMER_EXPIRED;
   goto err;
  }

  ENA_MSLEEP(ENA_POLL_MS);
 }

 if (unlikely(comp_ctx->status == ENA_CMD_ABORTED)) {
  ena_trc_err("Command was aborted\n");
  ENA_SPINLOCK_LOCK(admin_queue->q_lock, flags);
  admin_queue->stats.aborted_cmd++;
  ENA_SPINLOCK_UNLOCK(admin_queue->q_lock, flags);
  ret = ENA_COM_NO_DEVICE;
  goto err;
 }

 ENA_WARN(comp_ctx->status != ENA_CMD_COMPLETED,
   "Invalid comp status %d\n", comp_ctx->status);

 ret = ena_com_comp_status_to_errno(comp_ctx->comp_status);
err:
 comp_ctxt_release(admin_queue, comp_ctx);
 return ret;
}
