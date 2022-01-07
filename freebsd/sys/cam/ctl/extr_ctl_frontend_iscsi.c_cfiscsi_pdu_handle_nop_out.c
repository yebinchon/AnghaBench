
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_bhs_nop_out {int bhsno_initiator_task_tag; } ;
struct iscsi_bhs_nop_in {int bhsni_flags; int bhsni_initiator_task_tag; int bhsni_target_transfer_tag; int bhsni_opcode; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;
struct cfiscsi_session {int dummy; } ;


 int CFISCSI_SESSION_WARN (struct cfiscsi_session*,char*) ;
 int ISCSI_BHS_OPCODE_NOP_IN ;
 int M_CFISCSI ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct cfiscsi_session* PDU_SESSION (struct icl_pdu*) ;
 struct icl_pdu* cfiscsi_pdu_new_response (struct icl_pdu*,int) ;
 int cfiscsi_pdu_queue (struct icl_pdu*) ;
 int cfiscsi_session_terminate (struct cfiscsi_session*) ;
 int free (void*,int ) ;
 int icl_pdu_append_data (struct icl_pdu*,void*,size_t,int) ;
 size_t icl_pdu_data_segment_length (struct icl_pdu*) ;
 int icl_pdu_free (struct icl_pdu*) ;
 int icl_pdu_get_data (struct icl_pdu*,int ,void*,size_t) ;
 void* malloc (size_t,int ,int) ;

__attribute__((used)) static void
cfiscsi_pdu_handle_nop_out(struct icl_pdu *request)
{
 struct cfiscsi_session *cs;
 struct iscsi_bhs_nop_out *bhsno;
 struct iscsi_bhs_nop_in *bhsni;
 struct icl_pdu *response;
 void *data = ((void*)0);
 size_t datasize;
 int error;

 cs = PDU_SESSION(request);
 bhsno = (struct iscsi_bhs_nop_out *)request->ip_bhs;

 if (bhsno->bhsno_initiator_task_tag == 0xffffffff) {




  icl_pdu_free(request);
  return;
 }

 datasize = icl_pdu_data_segment_length(request);
 if (datasize > 0) {
  data = malloc(datasize, M_CFISCSI, M_NOWAIT | M_ZERO);
  if (data == ((void*)0)) {
   CFISCSI_SESSION_WARN(cs, "failed to allocate memory; "
       "dropping connection");
   icl_pdu_free(request);
   cfiscsi_session_terminate(cs);
   return;
  }
  icl_pdu_get_data(request, 0, data, datasize);
 }

 response = cfiscsi_pdu_new_response(request, M_NOWAIT);
 if (response == ((void*)0)) {
  CFISCSI_SESSION_WARN(cs, "failed to allocate memory; "
      "droppping connection");
  free(data, M_CFISCSI);
  icl_pdu_free(request);
  cfiscsi_session_terminate(cs);
  return;
 }
 bhsni = (struct iscsi_bhs_nop_in *)response->ip_bhs;
 bhsni->bhsni_opcode = ISCSI_BHS_OPCODE_NOP_IN;
 bhsni->bhsni_flags = 0x80;
 bhsni->bhsni_initiator_task_tag = bhsno->bhsno_initiator_task_tag;
 bhsni->bhsni_target_transfer_tag = 0xffffffff;
 if (datasize > 0) {
  error = icl_pdu_append_data(response, data, datasize, M_NOWAIT);
  if (error != 0) {
   CFISCSI_SESSION_WARN(cs, "failed to allocate memory; "
       "dropping connection");
   free(data, M_CFISCSI);
   icl_pdu_free(request);
   icl_pdu_free(response);
   cfiscsi_session_terminate(cs);
   return;
  }
  free(data, M_CFISCSI);
 }

 icl_pdu_free(request);
 cfiscsi_pdu_queue(response);
}
