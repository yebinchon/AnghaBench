
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct query_info {int qtype; } ;
struct module_qstate {int curmod; int ** minfo; int * ext_state; int query_flags; TYPE_1__* env; struct query_info qinfo; } ;
typedef enum module_ext_state { ____Placeholder_module_ext_state } module_ext_state ;
struct TYPE_2__ {int (* attach_sub ) (struct module_qstate*,struct query_info*,int ,int ,int ,struct module_qstate**) ;} ;


 int LDNS_RR_TYPE_A ;
 int VERB_ALGO ;
 int fptr_ok (int ) ;
 int fptr_whitelist_modenv_attach_sub (int (*) (struct module_qstate*,struct query_info*,int ,int ,int ,struct module_qstate**)) ;
 int module_error ;
 int module_state_initial ;
 int module_wait_subquery ;
 int stub1 (struct module_qstate*,struct query_info*,int ,int ,int ,struct module_qstate**) ;
 int verbose (int ,char*) ;

__attribute__((used)) static enum module_ext_state
generate_type_A_query(struct module_qstate* qstate, int id)
{
 struct module_qstate* subq = ((void*)0);
 struct query_info qinfo;

 verbose(VERB_ALGO, "dns64: query A record");


 qinfo = qstate->qinfo;
 qinfo.qtype = LDNS_RR_TYPE_A;


 fptr_ok(fptr_whitelist_modenv_attach_sub(qstate->env->attach_sub));
 if(!(*qstate->env->attach_sub)(qstate, &qinfo, qstate->query_flags, 0,
           0, &subq))
 {
  verbose(VERB_ALGO, "dns64: sub-query creation failed");
  return module_error;
 }
 if (subq) {
  subq->curmod = id;
  subq->ext_state[id] = module_state_initial;
  subq->minfo[id] = ((void*)0);
 }

 return module_wait_subquery;
}
