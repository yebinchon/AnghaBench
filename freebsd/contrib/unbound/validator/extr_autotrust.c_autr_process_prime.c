
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct trust_anchor {int dnskey_rrset; int ds_rrset; TYPE_1__* autr; int dclass; int name; int lock; } ;
struct module_qstate {int dummy; } ;
struct module_env {scalar_t__* now; } ;
struct TYPE_2__ {scalar_t__ query_failed; scalar_t__ last_success; scalar_t__ last_queried; scalar_t__ revoked; } ;


 int LDNS_RR_TYPE_DNSKEY ;
 int VERB_ALGO ;
 int autr_assemble (struct trust_anchor*) ;
 int autr_cleanup_keys (struct trust_anchor*) ;
 int autr_holddown_exceed (struct module_env*,struct trust_anchor*,int*) ;
 int autr_tp_remove (struct module_env*,struct trust_anchor*,struct ub_packed_rrset_key*) ;
 int autr_write_file (struct module_env*,struct trust_anchor*) ;
 int check_contains_revoked (struct module_env*,struct val_env*,struct trust_anchor*,struct ub_packed_rrset_key*,int*,struct module_qstate*) ;
 int do_statetable (struct module_env*,struct trust_anchor*,int*) ;
 int lock_basic_unlock (int *) ;
 int log_assert (int) ;
 int log_err (char*) ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;
 int set_next_probe (struct module_env*,struct trust_anchor*,struct ub_packed_rrset_key*) ;
 int update_events (struct module_env*,struct val_env*,struct trust_anchor*,struct ub_packed_rrset_key*,int*) ;
 int verbose (int ,char*) ;
 int verify_dnskey (struct module_env*,struct val_env*,struct trust_anchor*,struct ub_packed_rrset_key*,struct module_qstate*) ;

int autr_process_prime(struct module_env* env, struct val_env* ve,
 struct trust_anchor* tp, struct ub_packed_rrset_key* dnskey_rrset,
 struct module_qstate* qstate)
{
 int changed = 0;
 log_assert(tp && tp->autr);





 if(tp->autr->revoked) {
  log_nametypeclass(VERB_ALGO, "autotrust not processed, "
   "trust point revoked", tp->name,
   LDNS_RR_TYPE_DNSKEY, tp->dclass);
  lock_basic_unlock(&tp->lock);
  return 0;
 }


 tp->autr->last_queried = *env->now;

 log_nametypeclass(VERB_ALGO, "autotrust process for",
  tp->name, LDNS_RR_TYPE_DNSKEY, tp->dclass);

 autr_holddown_exceed(env, tp, &changed);
 if(changed) {
  verbose(VERB_ALGO, "autotrust: morekeys, reassemble");
  if(!autr_assemble(tp)) {
   log_err("malloc failure assembling autotrust keys");
   return 1;
  }
 }

 if(!dnskey_rrset) {
  verbose(VERB_ALGO, "autotrust: no dnskey rrset");




  return 1;
 }

 check_contains_revoked(env, ve, tp, dnskey_rrset, &changed, qstate);
 if(changed) {
  verbose(VERB_ALGO, "autotrust: revokedkeys, reassemble");
  if(!autr_assemble(tp)) {
   log_err("malloc failure assembling autotrust keys");
   return 1;
  }
  if(!tp->ds_rrset && !tp->dnskey_rrset) {


   tp->autr->last_success = *env->now;
   autr_tp_remove(env, tp, dnskey_rrset);
   return 0;
  }
 }

 if(!verify_dnskey(env, ve, tp, dnskey_rrset, qstate)) {
  verbose(VERB_ALGO, "autotrust: dnskey did not verify.");


  if(tp->autr->last_success) {
   tp->autr->query_failed += 1;
   autr_write_file(env, tp);
  }
  return 1;
 }

 tp->autr->last_success = *env->now;
 tp->autr->query_failed = 0;






 if(!update_events(env, ve, tp, dnskey_rrset, &changed)) {
  log_err("malloc failure in autotrust update_events. "
   "trust point unchanged.");
  return 1;
 }




 if(!do_statetable(env, tp, &changed)) {
  log_err("malloc failure in autotrust do_statetable. "
   "trust point unchanged.");
  return 1;
 }

 autr_cleanup_keys(tp);
 if(!set_next_probe(env, tp, dnskey_rrset))
  return 0;
 autr_write_file(env, tp);
 if(changed) {
  verbose(VERB_ALGO, "autotrust: changed, reassemble");
  if(!autr_assemble(tp)) {
   log_err("malloc failure assembling autotrust keys");
   return 1;
  }
  if(!tp->ds_rrset && !tp->dnskey_rrset) {

   autr_tp_remove(env, tp, dnskey_rrset);
   return 0;
  }
 } else verbose(VERB_ALGO, "autotrust: no changes");

 return 1;
}
