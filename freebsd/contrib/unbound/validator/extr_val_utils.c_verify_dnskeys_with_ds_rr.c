
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct module_qstate {int dummy; } ;
struct module_env {int dummy; } ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 int LDNS_SECTION_ANSWER ;
 int VERB_ALGO ;
 int algo_needs_reason (struct module_env*,scalar_t__,char**,char*) ;
 scalar_t__ dnskey_calc_keytag (struct ub_packed_rrset_key*,size_t) ;
 scalar_t__ dnskey_get_algo (struct ub_packed_rrset_key*,size_t) ;
 int dnskey_verify_rrset (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,size_t,char**,int ,struct module_qstate*) ;
 int ds_digest_match_dnskey (struct module_env*,struct ub_packed_rrset_key*,size_t,struct ub_packed_rrset_key*,size_t) ;
 scalar_t__ ds_get_key_algo (struct ub_packed_rrset_key*,size_t) ;
 scalar_t__ ds_get_keytag (struct ub_packed_rrset_key*,size_t) ;
 size_t rrset_get_count (struct ub_packed_rrset_key*) ;
 int sec_status_bogus ;
 int sec_status_secure ;
 int verbose (int ,char*,...) ;

__attribute__((used)) static enum sec_status
verify_dnskeys_with_ds_rr(struct module_env* env, struct val_env* ve,
 struct ub_packed_rrset_key* dnskey_rrset,
        struct ub_packed_rrset_key* ds_rrset, size_t ds_idx, char** reason,
 struct module_qstate* qstate)
{
 enum sec_status sec = sec_status_bogus;
 size_t i, num, numchecked = 0, numhashok = 0;
 num = rrset_get_count(dnskey_rrset);
 for(i=0; i<num; i++) {

  if(ds_get_key_algo(ds_rrset, ds_idx)
     != dnskey_get_algo(dnskey_rrset, i)
     || dnskey_calc_keytag(dnskey_rrset, i)
     != ds_get_keytag(ds_rrset, ds_idx)) {
   continue;
  }
  numchecked++;
  verbose(VERB_ALGO, "attempt DS match algo %d keytag %d",
   ds_get_key_algo(ds_rrset, ds_idx),
   ds_get_keytag(ds_rrset, ds_idx));



  if(!ds_digest_match_dnskey(env, dnskey_rrset, i, ds_rrset,
   ds_idx)) {
   verbose(VERB_ALGO, "DS match attempt failed");
   continue;
  }
  numhashok++;
  verbose(VERB_ALGO, "DS match digest ok, trying signature");



  sec = dnskey_verify_rrset(env, ve, dnskey_rrset,
   dnskey_rrset, i, reason, LDNS_SECTION_ANSWER, qstate);
  if(sec == sec_status_secure) {
   return sec;
  }

 }
 if(numchecked == 0)
  algo_needs_reason(env, ds_get_key_algo(ds_rrset, ds_idx),
   reason, "no keys have a DS");
 else if(numhashok == 0)
  *reason = "DS hash mismatches key";
 else if(!*reason)
  *reason = "keyset not secured by DNSKEY that matches DS";
 return sec_status_bogus;
}
