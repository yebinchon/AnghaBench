
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_msg {int dummy; } ;
struct uni_all {int mtype; } ;
struct call {scalar_t__ mine; int cref; int uni; } ;


 int SIGC_ADD_PARTY ;
 int SIGC_ADD_PARTY_ACK ;
 int SIGC_ADD_PARTY_REJ ;
 int SIGC_ALERTING ;
 int SIGC_CALL_PROC ;
 int SIGC_CONNECT ;
 int SIGC_CONNECT_ACK ;
 int SIGC_DROP_PARTY ;
 int SIGC_DROP_PARTY_ACK ;
 int SIGC_NOTIFY ;
 int SIGC_PARTY_ALERTING ;
 int SIGC_RELEASE ;
 int SIGC_RELEASE_COMPL ;
 int SIGC_STATUS ;
 int SIGC_STATUS_ENQ ;
 int SIGC_UNKNOWN ;
 int UNI_FAC_COORD ;
 int UNI_FREE (struct uni_all*) ;







 int VERBOSE (int ,int ,int,char*,int,int ,char*) ;
 int uni_enq_call (struct call*,int ,int ,struct uni_msg*,struct uni_all*) ;
 int uni_msg_destroy (struct uni_msg*) ;

__attribute__((used)) static void
input_call(struct call *c, struct uni_msg *m, struct uni_all *u)
{
 VERBOSE(c->uni, UNI_FAC_COORD, 2, "CALL MTYPE = %x %d/%s",
  u->mtype, c->cref, c->mine ? "mine":"his");

 switch (u->mtype) {

   case 130:



  break;

   case 139:
  uni_enq_call(c, SIGC_CALL_PROC, 0, m, u);
  return;

   case 140:
  uni_enq_call(c, SIGC_ALERTING, 0, m, u);
  return;

   case 132:
  uni_enq_call(c, SIGC_RELEASE, 0, m, u);
  return;

   case 131:
  uni_enq_call(c, SIGC_RELEASE_COMPL, 0, m, u);
  return;

   case 138:
  uni_enq_call(c, SIGC_CONNECT, 0, m, u);
  return;

   case 137:
  uni_enq_call(c, SIGC_CONNECT_ACK, 0, m, u);
  return;

   case 134:
  uni_enq_call(c, SIGC_NOTIFY, 0, m, u);
  return;

   case 129:
  uni_enq_call(c, SIGC_STATUS, 0, m, u);
  return;

   case 128:
  uni_enq_call(c, SIGC_STATUS_ENQ, 0, m, u);
  return;

   case 143:
  uni_enq_call(c, SIGC_ADD_PARTY, 0, m, u);
  return;

   case 133:
  uni_enq_call(c, SIGC_PARTY_ALERTING, 0, m, u);
  return;

   case 142:
  uni_enq_call(c, SIGC_ADD_PARTY_ACK, 0, m, u);
  return;

   case 141:
  uni_enq_call(c, SIGC_ADD_PARTY_REJ, 0, m, u);
  return;

   case 136:
  uni_enq_call(c, SIGC_DROP_PARTY, 0, m, u);
  return;

   case 135:
  uni_enq_call(c, SIGC_DROP_PARTY_ACK, 0, m, u);
  return;

   default:
  uni_enq_call(c, SIGC_UNKNOWN, 0, m, u);
  return;
 }
 UNI_FREE(u);
 uni_msg_destroy(m);
}
