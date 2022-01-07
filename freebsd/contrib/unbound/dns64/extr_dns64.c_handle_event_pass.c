
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ qtype; int qname_len; int * qname; } ;
struct module_qstate {int query_flags; TYPE_3__ qinfo; TYPE_2__* env; scalar_t__* minfo; } ;
struct dns64_qstate {scalar_t__ state; } ;
typedef enum module_ext_state { ____Placeholder_module_ext_state } module_ext_state ;
struct TYPE_5__ {TYPE_1__* cfg; } ;
struct TYPE_4__ {scalar_t__ dns64_synthall; } ;


 int BIT_CD ;
 scalar_t__ DNS64_NEW_QUERY ;
 scalar_t__ DNS64_SUBQUERY_FINISHED ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 scalar_t__ LDNS_RR_TYPE_PTR ;
 int VERB_ALGO ;
 scalar_t__ dns64_always_synth_for_qname (struct module_qstate*,int) ;
 int generate_type_A_query (struct module_qstate*,int) ;
 int handle_ipv6_ptr (struct module_qstate*,int) ;
 int module_finished ;
 int module_wait_module ;
 int strcmp (char*,char*) ;
 int verbose (int ,char*) ;

__attribute__((used)) static enum module_ext_state
handle_event_pass(struct module_qstate* qstate, int id)
{
 struct dns64_qstate* iq = (struct dns64_qstate*)qstate->minfo[id];
 if (iq && iq->state == DNS64_NEW_QUERY
            && qstate->qinfo.qtype == LDNS_RR_TYPE_PTR
            && qstate->qinfo.qname_len == 74
            && !strcmp((char*)&qstate->qinfo.qname[64], "\03ip6\04arpa"))

        return handle_ipv6_ptr(qstate, id);

 if (qstate->env->cfg->dns64_synthall &&
     iq && iq->state == DNS64_NEW_QUERY
     && qstate->qinfo.qtype == LDNS_RR_TYPE_AAAA)
  return generate_type_A_query(qstate, id);

 if(dns64_always_synth_for_qname(qstate, id) &&
     iq && iq->state == DNS64_NEW_QUERY
     && !(qstate->query_flags & BIT_CD)
     && qstate->qinfo.qtype == LDNS_RR_TYPE_AAAA) {
  verbose(VERB_ALGO, "dns64: ignore-aaaa and synthesize anyway");
  return generate_type_A_query(qstate, id);
 }


 if (iq && iq->state == DNS64_SUBQUERY_FINISHED)
  return module_finished;


 verbose(VERB_ALGO, "dns64: pass to next module");
 return module_wait_module;
}
