
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int qclass; int qtype; int qname_len; int qname; } ;
struct module_qstate {int * ext_state; TYPE_4__ qinfo; TYPE_3__* env; TYPE_5__* return_msg; int return_rcode; scalar_t__* minfo; } ;
struct iter_qstate {int chase_flags; TYPE_5__* response; int dp; int qchase; scalar_t__ chase_to_rd; } ;
typedef enum response_type { ____Placeholder_response_type } response_type ;
struct TYPE_10__ {TYPE_1__* rep; } ;
struct TYPE_8__ {TYPE_2__* cfg; } ;
struct TYPE_7__ {scalar_t__ harden_referral_path; } ;
struct TYPE_6__ {int flags; } ;


 int BIT_RA ;
 int BIT_RD ;
 int FINISHED_STATE ;
 int INIT_REQUEST_STATE ;
 int LDNS_RCODE_NOERROR ;
 int LDNS_RCODE_SERVFAIL ;
 int RESPONSE_TYPE_ANSWER ;
 int VERB_ALGO ;
 int errinf (struct module_qstate*,char*) ;
 int errinf_dname (struct module_qstate*,char*,int ) ;
 int generate_a_aaaa_check (struct module_qstate*,struct iter_qstate*,int) ;
 int generate_sub_request (int ,int ,int ,int ,struct module_qstate*,int,struct iter_qstate*,int ,int ,struct module_qstate**,int) ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;
 int module_finished ;
 int response_type_from_server (int,TYPE_5__*,int *,int ) ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
processPrimeResponse(struct module_qstate* qstate, int id)
{
 struct iter_qstate* iq = (struct iter_qstate*)qstate->minfo[id];
 enum response_type type;
 iq->response->rep->flags &= ~(BIT_RD|BIT_RA);
 type = response_type_from_server(
  (int)((iq->chase_flags&BIT_RD) || iq->chase_to_rd),
  iq->response, &iq->qchase, iq->dp);
 if(type == RESPONSE_TYPE_ANSWER) {
  qstate->return_rcode = LDNS_RCODE_NOERROR;
  qstate->return_msg = iq->response;
 } else {
  errinf(qstate, "prime response did not get an answer");
  errinf_dname(qstate, "for", qstate->qinfo.qname);
  qstate->return_rcode = LDNS_RCODE_SERVFAIL;
  qstate->return_msg = ((void*)0);
 }





 if(qstate->env->cfg->harden_referral_path) {
  struct module_qstate* subq = ((void*)0);
  log_nametypeclass(VERB_ALGO, "schedule prime validation",
   qstate->qinfo.qname, qstate->qinfo.qtype,
   qstate->qinfo.qclass);
  if(!generate_sub_request(qstate->qinfo.qname,
   qstate->qinfo.qname_len, qstate->qinfo.qtype,
   qstate->qinfo.qclass, qstate, id, iq,
   INIT_REQUEST_STATE, FINISHED_STATE, &subq, 1)) {
   verbose(VERB_ALGO, "could not generate prime check");
  }
  generate_a_aaaa_check(qstate, iq, id);
 }


 qstate->ext_state[id] = module_finished;
 return 0;
}
