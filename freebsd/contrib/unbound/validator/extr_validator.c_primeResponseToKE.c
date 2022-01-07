
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct trust_anchor {int dclass; int name; int namelen; int dnskey_rrset; int ds_rrset; } ;
struct module_qstate {TYPE_2__* env; int region; } ;
struct key_entry_key {int dummy; } ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_4__ {int * now; TYPE_1__* cfg; scalar_t__* modinfo; } ;
struct TYPE_3__ {int harden_algo_downgrade; scalar_t__ harden_dnssec_stripped; } ;


 int BOGUS_KEY_TTL ;
 int LDNS_RR_TYPE_DNSKEY ;
 int NULL_KEY_TTL ;
 int VERB_DETAIL ;
 int VERB_OPS ;
 int errinf (struct module_qstate*,char*) ;
 struct key_entry_key* key_entry_create_bad (int ,int ,int ,int ,int ,int ) ;
 struct key_entry_key* key_entry_create_null (int ,int ,int ,int ,int ,int ) ;
 scalar_t__ key_entry_isgood (struct key_entry_key*) ;
 int log_err (char*) ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;
 int sec_status_bogus ;
 int sec_status_secure ;
 int sec_status_to_string (int) ;
 int sec_status_unchecked ;
 struct key_entry_key* val_verify_new_DNSKEYs_with_ta (int ,TYPE_2__*,struct val_env*,struct ub_packed_rrset_key*,int ,int ,int,char**,struct module_qstate*) ;
 int verbose (int ,char*,int ) ;

__attribute__((used)) static struct key_entry_key*
primeResponseToKE(struct ub_packed_rrset_key* dnskey_rrset,
 struct trust_anchor* ta, struct module_qstate* qstate, int id)
{
 struct val_env* ve = (struct val_env*)qstate->env->modinfo[id];
 struct key_entry_key* kkey = ((void*)0);
 enum sec_status sec = sec_status_unchecked;
 char* reason = ((void*)0);
 int downprot = qstate->env->cfg->harden_algo_downgrade;

 if(!dnskey_rrset) {
  log_nametypeclass(VERB_OPS, "failed to prime trust anchor -- "
   "could not fetch DNSKEY rrset",
   ta->name, LDNS_RR_TYPE_DNSKEY, ta->dclass);
  if(qstate->env->cfg->harden_dnssec_stripped) {
   errinf(qstate, "no DNSKEY rrset");
   kkey = key_entry_create_bad(qstate->region, ta->name,
    ta->namelen, ta->dclass, BOGUS_KEY_TTL,
    *qstate->env->now);
  } else kkey = key_entry_create_null(qstate->region, ta->name,
    ta->namelen, ta->dclass, NULL_KEY_TTL,
    *qstate->env->now);
  if(!kkey) {
   log_err("out of memory: allocate fail prime key");
   return ((void*)0);
  }
  return kkey;
 }

 kkey = val_verify_new_DNSKEYs_with_ta(qstate->region, qstate->env, ve,
  dnskey_rrset, ta->ds_rrset, ta->dnskey_rrset, downprot,
  &reason, qstate);
 if(!kkey) {
  log_err("out of memory: verifying prime TA");
  return ((void*)0);
 }
 if(key_entry_isgood(kkey))
  sec = sec_status_secure;
 else
  sec = sec_status_bogus;
 verbose(VERB_DETAIL, "validate keys with anchor(DS): %s",
  sec_status_to_string(sec));

 if(sec != sec_status_secure) {
  log_nametypeclass(VERB_OPS, "failed to prime trust anchor -- "
   "DNSKEY rrset is not secure",
   ta->name, LDNS_RR_TYPE_DNSKEY, ta->dclass);


  if(qstate->env->cfg->harden_dnssec_stripped) {
   errinf(qstate, reason);
   kkey = key_entry_create_bad(qstate->region, ta->name,
    ta->namelen, ta->dclass, BOGUS_KEY_TTL,
    *qstate->env->now);
  } else kkey = key_entry_create_null(qstate->region, ta->name,
    ta->namelen, ta->dclass, NULL_KEY_TTL,
    *qstate->env->now);
  if(!kkey) {
   log_err("out of memory: allocate null prime key");
   return ((void*)0);
  }
  return kkey;
 }

 log_nametypeclass(VERB_DETAIL, "Successfully primed trust anchor",
  ta->name, LDNS_RR_TYPE_DNSKEY, ta->dclass);
 return kkey;
}
