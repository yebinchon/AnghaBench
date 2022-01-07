
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_bhs_nop_in {int bhsni_flags; int bhsni_initiator_task_tag; int bhsni_opcode; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;
struct cfiscsi_session {scalar_t__ cs_timeout; int cs_conn; scalar_t__ cs_login_phase; scalar_t__ cs_waiting_for_ctld; int cs_callout; scalar_t__ cs_terminating; } ;


 int CFISCSI_SESSION_WARN (struct cfiscsi_session*,char*,...) ;
 int ISCSI_BHS_OPCODE_NOP_IN ;
 int M_NOWAIT ;
 int atomic_add_int (scalar_t__*,int) ;
 int callout_schedule (int *,int) ;
 int cfiscsi_pdu_queue (struct icl_pdu*) ;
 int cfiscsi_session_terminate (struct cfiscsi_session*) ;
 int hz ;
 struct icl_pdu* icl_pdu_new (int ,int ) ;
 scalar_t__ login_timeout ;
 scalar_t__ ping_timeout ;

__attribute__((used)) static void
cfiscsi_callout(void *context)
{
 struct icl_pdu *cp;
 struct iscsi_bhs_nop_in *bhsni;
 struct cfiscsi_session *cs;

 cs = context;

 if (cs->cs_terminating)
  return;

 callout_schedule(&cs->cs_callout, 1 * hz);

 atomic_add_int(&cs->cs_timeout, 1);
 if (ping_timeout <= 0) {
  cs->cs_timeout = 0;
  return;
 }

 if (cs->cs_timeout >= ping_timeout) {
  CFISCSI_SESSION_WARN(cs, "no ping reply (NOP-Out) after %d seconds; "
      "dropping connection", ping_timeout);
  cfiscsi_session_terminate(cs);
  return;
 }
 if (cs->cs_timeout < 2)
  return;

 cp = icl_pdu_new(cs->cs_conn, M_NOWAIT);
 if (cp == ((void*)0)) {
  CFISCSI_SESSION_WARN(cs, "failed to allocate memory");
  return;
 }
 bhsni = (struct iscsi_bhs_nop_in *)cp->ip_bhs;
 bhsni->bhsni_opcode = ISCSI_BHS_OPCODE_NOP_IN;
 bhsni->bhsni_flags = 0x80;
 bhsni->bhsni_initiator_task_tag = 0xffffffff;

 cfiscsi_pdu_queue(cp);
}
