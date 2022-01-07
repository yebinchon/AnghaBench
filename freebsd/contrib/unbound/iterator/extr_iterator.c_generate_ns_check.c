
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ qtype; int qname; } ;
struct module_qstate {int query_flags; TYPE_6__* env; int region; scalar_t__* minfo; TYPE_1__ qinfo; } ;
struct TYPE_8__ {int qclass; } ;
struct iter_qstate {scalar_t__ depth; int refetch_glue; TYPE_3__* dp; TYPE_2__ qchase; } ;
struct iter_env {scalar_t__ max_dependency_depth; } ;
struct TYPE_10__ {int (* kill_sub ) (struct module_qstate*) ;scalar_t__* modinfo; } ;
struct TYPE_9__ {int namelen; int name; } ;


 int BIT_CD ;
 int BIT_RD ;
 int FINISHED_STATE ;
 int INIT_REQUEST_STATE ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 int VERB_ALGO ;
 int can_have_last_resort (TYPE_6__*,int ,int ,int ,int *) ;
 TYPE_3__* delegpt_copy (TYPE_3__*,int ) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_modenv_kill_sub (int (*) (struct module_qstate*)) ;
 int generate_a_aaaa_check (struct module_qstate*,struct iter_qstate*,int) ;
 int generate_sub_request (int ,int ,scalar_t__,int ,struct module_qstate*,int,struct iter_qstate*,int ,int ,struct module_qstate**,int) ;
 int log_assert (TYPE_3__*) ;
 int log_err (char*) ;
 int log_nametypeclass (int ,char*,int ,scalar_t__,int ) ;
 scalar_t__ query_dname_compare (int ,int ) ;
 int stub1 (struct module_qstate*) ;
 int verbose (int ,char*) ;

__attribute__((used)) static void
generate_ns_check(struct module_qstate* qstate, struct iter_qstate* iq, int id)
{
 struct iter_env* ie = (struct iter_env*)qstate->env->modinfo[id];
 struct module_qstate* subq;
 log_assert(iq->dp);

 if(iq->depth == ie->max_dependency_depth)
  return;
 if(!can_have_last_resort(qstate->env, iq->dp->name, iq->dp->namelen,
  iq->qchase.qclass, ((void*)0)))
  return;

 if(qstate->qinfo.qtype == LDNS_RR_TYPE_NS &&
  query_dname_compare(iq->dp->name, qstate->qinfo.qname)==0 &&
  (qstate->query_flags&BIT_RD) && !(qstate->query_flags&BIT_CD)){

  generate_a_aaaa_check(qstate, iq, id);
  return;
 }

 if(qstate->qinfo.qtype == LDNS_RR_TYPE_DS)
  return;

 log_nametypeclass(VERB_ALGO, "schedule ns fetch",
  iq->dp->name, LDNS_RR_TYPE_NS, iq->qchase.qclass);
 if(!generate_sub_request(iq->dp->name, iq->dp->namelen,
  LDNS_RR_TYPE_NS, iq->qchase.qclass, qstate, id, iq,
  INIT_REQUEST_STATE, FINISHED_STATE, &subq, 1)) {
  verbose(VERB_ALGO, "could not generate ns check");
  return;
 }
 if(subq) {
  struct iter_qstate* subiq =
   (struct iter_qstate*)subq->minfo[id];



  subiq->refetch_glue = 1;
  subiq->dp = delegpt_copy(iq->dp, subq->region);
  if(!subiq->dp) {
   log_err("out of memory generating ns check, copydp");
   fptr_ok(fptr_whitelist_modenv_kill_sub(
    qstate->env->kill_sub));
   (*qstate->env->kill_sub)(subq);
   return;
  }
 }
}
