
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ qtype; } ;
struct module_qstate {int query_flags; TYPE_1__* return_msg; TYPE_2__ qinfo; int env; scalar_t__* minfo; } ;
struct dns64_qstate {scalar_t__ state; int started_no_cache_store; } ;
typedef enum module_ext_state { ____Placeholder_module_ext_state } module_ext_state ;
struct TYPE_4__ {scalar_t__ rep; } ;


 int BIT_CD ;
 scalar_t__ DNS64_INTERNAL_QUERY ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 int VERB_ALGO ;
 scalar_t__ dns64_always_synth_for_qname (struct module_qstate*,int) ;
 int dns_cache_store (int ,TYPE_2__*,scalar_t__,int ,int ,int ,int *,int) ;
 int generate_type_A_query (struct module_qstate*,int) ;
 int log_err (char*) ;
 int module_finished ;
 scalar_t__ reply_find_answer_rrset (TYPE_2__*,scalar_t__) ;
 int verbose (int ,char*) ;

__attribute__((used)) static enum module_ext_state
handle_event_moddone(struct module_qstate* qstate, int id)
{
 struct dns64_qstate* iq = (struct dns64_qstate*)qstate->minfo[id];
 if((!iq || iq->state != DNS64_INTERNAL_QUERY)
            && qstate->qinfo.qtype == LDNS_RR_TYPE_AAAA
     && !(qstate->query_flags & BIT_CD)
     && !(qstate->return_msg &&
      qstate->return_msg->rep &&
      reply_find_answer_rrset(&qstate->qinfo,
       qstate->return_msg->rep)))


  return generate_type_A_query(qstate, id);

 if((!iq || iq->state != DNS64_INTERNAL_QUERY)
     && qstate->qinfo.qtype == LDNS_RR_TYPE_AAAA
     && !(qstate->query_flags & BIT_CD)
     && dns64_always_synth_for_qname(qstate, id)) {


  verbose(VERB_ALGO, "dns64: ignore-aaaa and synthesize anyway");
  return generate_type_A_query(qstate, id);
 }


 if ( (!iq || !iq->started_no_cache_store) &&
  qstate->return_msg && qstate->return_msg->rep &&
  !dns_cache_store(qstate->env, &qstate->qinfo, qstate->return_msg->rep,
  0, 0, 0, ((void*)0), qstate->query_flags))
  log_err("out of memory");


 return module_finished;
}
