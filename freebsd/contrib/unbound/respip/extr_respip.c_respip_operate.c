
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ub_packed_rrset_key {int dummy; } ;
struct respip_qstate {scalar_t__ state; } ;
struct respip_action_info {scalar_t__ member_0; scalar_t__ action; int * member_1; } ;
struct reply_info {int dummy; } ;
struct outbound_entry {int dummy; } ;
struct TYPE_5__ {scalar_t__ qtype; } ;
struct module_qstate {int* ext_state; int is_drop; TYPE_1__* return_msg; int return_rcode; int * respip_action_info; int region; int client_info; TYPE_2__ qinfo; struct respip_qstate** minfo; } ;
typedef enum module_ext_state { ____Placeholder_module_ext_state } module_ext_state ;
typedef enum module_ev { ____Placeholder_module_ev } module_ev ;
typedef int actinfo ;
struct TYPE_4__ {struct reply_info* rep; } ;


 int LDNS_RCODE_SERVFAIL ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 scalar_t__ LDNS_RR_TYPE_ANY ;
 scalar_t__ RESPIP_INIT ;
 scalar_t__ RESPIP_SUBQUERY_FINISHED ;
 int VERB_ALGO ;
 int VERB_QUERY ;
 int generate_cname_request (struct module_qstate*,struct ub_packed_rrset_key*) ;
 int log_err (char*) ;
 int log_query_info (int ,char*,TYPE_2__*) ;
 int module_event_moddone ;
 int module_event_new ;
 int module_event_pass ;
 void* module_finished ;
 int module_wait_module ;
 int module_wait_subquery ;
 int * regional_alloc_init (int ,struct respip_action_info*,int) ;
 struct respip_qstate* regional_alloc_zero (int ,int) ;
 scalar_t__ respip_deny ;
 scalar_t__ respip_inform_deny ;
 scalar_t__ respip_none ;
 int respip_rewrite_reply (TYPE_2__*,int ,struct reply_info*,struct reply_info**,struct respip_action_info*,struct ub_packed_rrset_key**,int ,int ) ;
 int verbose (int ,char*) ;

void
respip_operate(struct module_qstate* qstate, enum module_ev event, int id,
 struct outbound_entry* outbound)
{
 struct respip_qstate* rq = (struct respip_qstate*)qstate->minfo[id];

 log_query_info(VERB_QUERY, "respip operate: query", &qstate->qinfo);
 (void)outbound;

 if(event == module_event_new || event == module_event_pass) {
  if(!rq) {
   rq = regional_alloc_zero(qstate->region, sizeof(*rq));
   if(!rq)
    goto servfail;
   rq->state = RESPIP_INIT;
   qstate->minfo[id] = rq;
  }
  if(rq->state == RESPIP_SUBQUERY_FINISHED) {
   qstate->ext_state[id] = module_finished;
   return;
  }
  verbose(VERB_ALGO, "respip: pass to next module");
  qstate->ext_state[id] = module_wait_module;
 } else if(event == module_event_moddone) {




  enum module_ext_state next_state = module_finished;

  if((qstate->qinfo.qtype == LDNS_RR_TYPE_A ||
   qstate->qinfo.qtype == LDNS_RR_TYPE_AAAA ||
   qstate->qinfo.qtype == LDNS_RR_TYPE_ANY) &&
   qstate->return_msg && qstate->return_msg->rep) {
   struct respip_action_info actinfo = {respip_none, ((void*)0)};
   struct reply_info* new_rep = qstate->return_msg->rep;
   struct ub_packed_rrset_key* alias_rrset = ((void*)0);

   if(!respip_rewrite_reply(&qstate->qinfo,
    qstate->client_info, qstate->return_msg->rep,
    &new_rep, &actinfo, &alias_rrset, 0,
    qstate->region)) {
    goto servfail;
   }
   if(actinfo.action != respip_none) {


    if(!(qstate->respip_action_info =
     regional_alloc_init(qstate->region,
      &actinfo, sizeof(actinfo))))
    {
     log_err("out of memory");
     goto servfail;
    }
   } else {
    qstate->respip_action_info = ((void*)0);
   }
   if (new_rep == qstate->return_msg->rep &&
    (actinfo.action == respip_deny ||
    actinfo.action == respip_inform_deny)) {




    qstate->is_drop = 1;
   } else if(alias_rrset) {
    if(!generate_cname_request(qstate, alias_rrset))
     goto servfail;
    next_state = module_wait_subquery;
   }
   qstate->return_msg->rep = new_rep;
  }
  qstate->ext_state[id] = next_state;
 } else
  qstate->ext_state[id] = module_finished;

 return;

  servfail:
 qstate->return_rcode = LDNS_RCODE_SERVFAIL;
 qstate->return_msg = ((void*)0);
}
