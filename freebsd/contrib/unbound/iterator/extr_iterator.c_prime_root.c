
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int qclass; } ;
struct module_qstate {int * ext_state; TYPE_1__ qinfo; TYPE_3__* env; int region; scalar_t__* minfo; } ;
struct iter_qstate {int dp; int dnssec_expected; scalar_t__ num_target_queries; } ;
struct delegpt {int dummy; } ;
struct TYPE_6__ {int (* kill_sub ) (struct module_qstate*) ;int hints; } ;
struct TYPE_5__ {char* name; } ;


 int LDNS_RR_TYPE_NS ;
 int PRIME_RESP_STATE ;
 int QUERYTARGETS_STATE ;
 int VERB_ALGO ;
 int VERB_DETAIL ;
 int delegpt_copy (struct delegpt*,int ) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_modenv_kill_sub (int (*) (struct module_qstate*)) ;
 int generate_sub_request (int *,int,int ,scalar_t__,struct module_qstate*,int,struct iter_qstate*,int ,int ,struct module_qstate**,int ) ;
 struct delegpt* hints_lookup_root (int ,scalar_t__) ;
 int iter_indicates_dnssec (TYPE_3__*,int ,int *,int ) ;
 int log_err (char*) ;
 int module_wait_subquery ;
 TYPE_2__* sldns_lookup_by_id (int ,int) ;
 int sldns_rr_classes ;
 int stub1 (struct module_qstate*) ;
 int verbose (int ,char*,...) ;

__attribute__((used)) static int
prime_root(struct module_qstate* qstate, struct iter_qstate* iq, int id,
 uint16_t qclass)
{
 struct delegpt* dp;
 struct module_qstate* subq;
 verbose(VERB_DETAIL, "priming . %s NS",
  sldns_lookup_by_id(sldns_rr_classes, (int)qclass)?
  sldns_lookup_by_id(sldns_rr_classes, (int)qclass)->name:"??");
 dp = hints_lookup_root(qstate->env->hints, qclass);
 if(!dp) {
  verbose(VERB_ALGO, "Cannot prime due to lack of hints");
  return 0;
 }


 if(!generate_sub_request((uint8_t*)"\000", 1, LDNS_RR_TYPE_NS,
  qclass, qstate, id, iq, QUERYTARGETS_STATE, PRIME_RESP_STATE,
  &subq, 0)) {
  verbose(VERB_ALGO, "could not prime root");
  return 0;
 }
 if(subq) {
  struct iter_qstate* subiq =
   (struct iter_qstate*)subq->minfo[id];



  subiq->dp = delegpt_copy(dp, subq->region);
  if(!subiq->dp) {
   log_err("out of memory priming root, copydp");
   fptr_ok(fptr_whitelist_modenv_kill_sub(
    qstate->env->kill_sub));
   (*qstate->env->kill_sub)(subq);
   return 0;
  }

  subiq->num_target_queries = 0;
  subiq->dnssec_expected = iter_indicates_dnssec(
   qstate->env, subiq->dp, ((void*)0), subq->qinfo.qclass);
 }


 qstate->ext_state[id] = module_wait_subquery;
 return 1;
}
