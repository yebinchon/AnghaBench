
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icl_pdu {TYPE_1__* ip_bhs; } ;
struct cfiscsi_session {int dummy; } ;
struct TYPE_2__ {int bhs_opcode; } ;


 int CFISCSI_SESSION_WARN (struct cfiscsi_session*,char*,int) ;
 int ISCSI_BHS_OPCODE_IMMEDIATE ;





 struct cfiscsi_session* PDU_SESSION (struct icl_pdu*) ;
 int cfiscsi_pdu_handle_data_out (struct icl_pdu*) ;
 int cfiscsi_pdu_handle_logout_request (struct icl_pdu*) ;
 int cfiscsi_pdu_handle_nop_out (struct icl_pdu*) ;
 int cfiscsi_pdu_handle_scsi_command (struct icl_pdu*) ;
 int cfiscsi_pdu_handle_task_request (struct icl_pdu*) ;
 int cfiscsi_pdu_update_cmdsn (struct icl_pdu*) ;
 int cfiscsi_session_terminate (struct cfiscsi_session*) ;
 int icl_pdu_free (struct icl_pdu*) ;

__attribute__((used)) static void
cfiscsi_pdu_handle(struct icl_pdu *request)
{
 struct cfiscsi_session *cs;
 bool ignore;

 cs = PDU_SESSION(request);

 ignore = cfiscsi_pdu_update_cmdsn(request);
 if (ignore) {
  icl_pdu_free(request);
  return;
 }







 switch (request->ip_bhs->bhs_opcode &
     ~ISCSI_BHS_OPCODE_IMMEDIATE) {
 case 131:
  cfiscsi_pdu_handle_nop_out(request);
  break;
 case 130:
  cfiscsi_pdu_handle_scsi_command(request);
  break;
 case 128:
  cfiscsi_pdu_handle_task_request(request);
  break;
 case 129:
  cfiscsi_pdu_handle_data_out(request);
  break;
 case 132:
  cfiscsi_pdu_handle_logout_request(request);
  break;
 default:
  CFISCSI_SESSION_WARN(cs, "received PDU with unsupported "
      "opcode 0x%x; dropping connection",
      request->ip_bhs->bhs_opcode);
  icl_pdu_free(request);
  cfiscsi_session_terminate(cs);
 }

}
