
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ena_comp_ctx {int wait_event; int comp_size; scalar_t__ user_cqe; int comp_status; int status; } ;
struct ena_com_admin_queue {int running_state; int polling; } ;
struct TYPE_2__ {int command; int status; } ;
struct ena_admin_acq_entry {TYPE_1__ acq_common_descriptor; } ;


 int ENA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK ;
 int ENA_CMD_COMPLETED ;
 int ENA_WAIT_EVENT_SIGNAL (int ) ;
 int ena_trc_err (char*) ;
 struct ena_comp_ctx* get_comp_ctxt (struct ena_com_admin_queue*,int,int) ;
 int memcpy (scalar_t__,void*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ena_com_handle_single_admin_completion(struct ena_com_admin_queue *admin_queue,
         struct ena_admin_acq_entry *cqe)
{
 struct ena_comp_ctx *comp_ctx;
 u16 cmd_id;

 cmd_id = cqe->acq_common_descriptor.command &
  ENA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK;

 comp_ctx = get_comp_ctxt(admin_queue, cmd_id, 0);
 if (unlikely(!comp_ctx)) {
  ena_trc_err("comp_ctx is NULL. Changing the admin queue running state\n");
  admin_queue->running_state = 0;
  return;
 }

 comp_ctx->status = ENA_CMD_COMPLETED;
 comp_ctx->comp_status = cqe->acq_common_descriptor.status;

 if (comp_ctx->user_cqe)
  memcpy(comp_ctx->user_cqe, (void *)cqe, comp_ctx->comp_size);

 if (!admin_queue->polling)
  ENA_WAIT_EVENT_SIGNAL(comp_ctx->wait_event);
}
