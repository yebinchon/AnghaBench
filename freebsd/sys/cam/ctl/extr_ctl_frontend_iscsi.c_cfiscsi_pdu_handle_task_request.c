
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {void* task_action; int tag_num; int tag_type; } ;
struct TYPE_10__ {int targ_lun; int targ_port; int initid; } ;
struct TYPE_11__ {TYPE_4__ nexus; int io_type; TYPE_1__* ctl_private; } ;
union ctl_io {TYPE_6__ taskio; TYPE_5__ io_hdr; } ;
struct iscsi_bhs_task_management_response {int bhstmr_flags; int bhstmr_initiator_task_tag; int bhstmr_response; int bhstmr_opcode; } ;
struct iscsi_bhs_task_management_request {int bhstmr_function; int bhstmr_initiator_task_tag; int bhstmr_referenced_task_tag; int bhstmr_lun; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;
struct cfiscsi_session {int cs_outstanding_ctl_pdus; TYPE_3__* cs_target; int cs_ctl_initid; } ;
struct TYPE_8__ {int targ_port; int ctl_pool_ref; } ;
struct TYPE_9__ {TYPE_2__ ct_port; } ;
struct TYPE_7__ {struct icl_pdu* ptr; } ;
 int BHSTMR_RESPONSE_FUNCTION_NOT_SUPPORTED ;
 int CFISCSI_SESSION_DEBUG (struct cfiscsi_session*,char*,...) ;
 int CFISCSI_SESSION_WARN (struct cfiscsi_session*,char*,...) ;
 int CTL_IO_TASK ;
 size_t CTL_PRIV_FRONTEND ;
 int CTL_RETVAL_COMPLETE ;
 int CTL_TAG_SIMPLE ;
 void* CTL_TASK_ABORT_TASK ;
 void* CTL_TASK_ABORT_TASK_SET ;
 void* CTL_TASK_CLEAR_TASK_SET ;
 void* CTL_TASK_I_T_NEXUS_RESET ;
 void* CTL_TASK_LUN_RESET ;
 void* CTL_TASK_QUERY_ASYNC_EVENT ;
 void* CTL_TASK_QUERY_TASK ;
 void* CTL_TASK_QUERY_TASK_SET ;
 void* CTL_TASK_TARGET_RESET ;
 int ISCSI_BHS_OPCODE_TASK_RESPONSE ;
 int M_NOWAIT ;
 struct cfiscsi_session* PDU_SESSION (struct icl_pdu*) ;
 int be64toh (int ) ;
 struct icl_pdu* cfiscsi_pdu_new_response (struct icl_pdu*,int ) ;
 int cfiscsi_pdu_queue (struct icl_pdu*) ;
 int cfiscsi_session_terminate (struct cfiscsi_session*) ;
 union ctl_io* ctl_alloc_io (int ) ;
 int ctl_decode_lun (int ) ;
 int ctl_free_io (union ctl_io*) ;
 int ctl_queue (union ctl_io*) ;
 int ctl_zero_io (union ctl_io*) ;
 int icl_pdu_free (struct icl_pdu*) ;
 int refcount_acquire (int *) ;
 int refcount_release (int *) ;

__attribute__((used)) static void
cfiscsi_pdu_handle_task_request(struct icl_pdu *request)
{
 struct iscsi_bhs_task_management_request *bhstmr;
 struct iscsi_bhs_task_management_response *bhstmr2;
 struct icl_pdu *response;
 struct cfiscsi_session *cs;
 union ctl_io *io;
 int error;

 cs = PDU_SESSION(request);
 bhstmr = (struct iscsi_bhs_task_management_request *)request->ip_bhs;
 io = ctl_alloc_io(cs->cs_target->ct_port.ctl_pool_ref);
 ctl_zero_io(io);
 io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = request;
 io->io_hdr.io_type = CTL_IO_TASK;
 io->io_hdr.nexus.initid = cs->cs_ctl_initid;
 io->io_hdr.nexus.targ_port = cs->cs_target->ct_port.targ_port;
 io->io_hdr.nexus.targ_lun = ctl_decode_lun(be64toh(bhstmr->bhstmr_lun));
 io->taskio.tag_type = CTL_TAG_SIMPLE;

 switch (bhstmr->bhstmr_function & ~0x80) {
 case 137:



  io->taskio.task_action = CTL_TASK_ABORT_TASK;
  io->taskio.tag_num = bhstmr->bhstmr_referenced_task_tag;
  break;
 case 136:



  io->taskio.task_action = CTL_TASK_ABORT_TASK_SET;
  break;
 case 135:



  io->taskio.task_action = CTL_TASK_CLEAR_TASK_SET;
  break;
 case 133:



  io->taskio.task_action = CTL_TASK_LUN_RESET;
  break;
 case 128:



  io->taskio.task_action = CTL_TASK_TARGET_RESET;
  break;
 case 129:



  io->taskio.task_action = CTL_TASK_TARGET_RESET;
  break;
 case 131:



  io->taskio.task_action = CTL_TASK_QUERY_TASK;
  io->taskio.tag_num = bhstmr->bhstmr_referenced_task_tag;
  break;
 case 130:



  io->taskio.task_action = CTL_TASK_QUERY_TASK_SET;
  break;
 case 134:



  io->taskio.task_action = CTL_TASK_I_T_NEXUS_RESET;
  break;
 case 132:



  io->taskio.task_action = CTL_TASK_QUERY_ASYNC_EVENT;
  break;
 default:
  CFISCSI_SESSION_DEBUG(cs, "unsupported function 0x%x",
      bhstmr->bhstmr_function & ~0x80);
  ctl_free_io(io);

  response = cfiscsi_pdu_new_response(request, M_NOWAIT);
  if (response == ((void*)0)) {
   CFISCSI_SESSION_WARN(cs, "failed to allocate memory; "
       "dropping connection");
   icl_pdu_free(request);
   cfiscsi_session_terminate(cs);
   return;
  }
  bhstmr2 = (struct iscsi_bhs_task_management_response *)
      response->ip_bhs;
  bhstmr2->bhstmr_opcode = ISCSI_BHS_OPCODE_TASK_RESPONSE;
  bhstmr2->bhstmr_flags = 0x80;
  bhstmr2->bhstmr_response =
      BHSTMR_RESPONSE_FUNCTION_NOT_SUPPORTED;
  bhstmr2->bhstmr_initiator_task_tag =
      bhstmr->bhstmr_initiator_task_tag;
  icl_pdu_free(request);
  cfiscsi_pdu_queue(response);
  return;
 }

 refcount_acquire(&cs->cs_outstanding_ctl_pdus);
 error = ctl_queue(io);
 if (error != CTL_RETVAL_COMPLETE) {
  CFISCSI_SESSION_WARN(cs, "ctl_queue() failed; error %d; "
      "dropping connection", error);
  ctl_free_io(io);
  refcount_release(&cs->cs_outstanding_ctl_pdus);
  icl_pdu_free(request);
  cfiscsi_session_terminate(cs);
 }
}
