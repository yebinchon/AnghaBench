
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct val_env {int dummy; } ;
struct TYPE_2__ {scalar_t__ dname_len; int dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct module_qstate {int dummy; } ;
struct module_env {int dummy; } ;
struct algo_needs {int dummy; } ;
typedef int needs ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 int LDNS_SECTION_ANSWER ;
 int VERB_ALGO ;
 int VERB_QUERY ;
 int algo_needs_init_dnskey_add (struct algo_needs*,struct ub_packed_rrset_key*,int *) ;
 int algo_needs_init_ds (struct algo_needs*,struct ub_packed_rrset_key*,int,int *) ;
 int algo_needs_missing (struct algo_needs*) ;
 int algo_needs_reason (struct module_env*,int,char**,char*) ;
 int algo_needs_set_bogus (struct algo_needs*,int ) ;
 scalar_t__ algo_needs_set_secure (struct algo_needs*,int ) ;
 int dnskey_algo_is_supported (struct ub_packed_rrset_key*,size_t) ;
 scalar_t__ dnskey_get_algo (struct ub_packed_rrset_key*,size_t) ;
 int dnskey_verify_rrset (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,size_t,char**,int ,struct module_qstate*) ;
 int ds_digest_algo_is_supported (struct ub_packed_rrset_key*,size_t) ;
 int ds_get_digest_algo (struct ub_packed_rrset_key*,size_t) ;
 scalar_t__ ds_get_key_algo (struct ub_packed_rrset_key*,size_t) ;
 int ds_key_algo_is_supported (struct ub_packed_rrset_key*,size_t) ;
 int memset (struct algo_needs*,int ,int) ;
 scalar_t__ query_dname_compare (int ,int ) ;
 size_t rrset_get_count (struct ub_packed_rrset_key*) ;
 int sec_status_bogus ;
 int sec_status_insecure ;
 int sec_status_secure ;
 int val_favorite_ds_algo (struct ub_packed_rrset_key*) ;
 int verbose (int ,char*) ;
 int verify_dnskeys_with_ds_rr (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,size_t,char**,struct module_qstate*) ;

enum sec_status
val_verify_DNSKEY_with_TA(struct module_env* env, struct val_env* ve,
 struct ub_packed_rrset_key* dnskey_rrset,
 struct ub_packed_rrset_key* ta_ds,
 struct ub_packed_rrset_key* ta_dnskey, uint8_t* sigalg, char** reason,
 struct module_qstate* qstate)
{


 int has_useful_ta = 0, digest_algo = 0, alg;
 struct algo_needs needs;
 size_t i, num;
 enum sec_status sec;

 if(ta_ds && (dnskey_rrset->rk.dname_len != ta_ds->rk.dname_len ||
  query_dname_compare(dnskey_rrset->rk.dname, ta_ds->rk.dname)
  != 0)) {
  verbose(VERB_QUERY, "DNSKEY RRset did not match DS RRset "
   "by name");
  *reason = "DNSKEY RRset did not match DS RRset by name";
  return sec_status_bogus;
 }
 if(ta_dnskey && (dnskey_rrset->rk.dname_len != ta_dnskey->rk.dname_len
      || query_dname_compare(dnskey_rrset->rk.dname, ta_dnskey->rk.dname)
  != 0)) {
  verbose(VERB_QUERY, "DNSKEY RRset did not match anchor RRset "
   "by name");
  *reason = "DNSKEY RRset did not match anchor RRset by name";
  return sec_status_bogus;
 }

 if(ta_ds)
  digest_algo = val_favorite_ds_algo(ta_ds);
 if(sigalg) {
  if(ta_ds)
   algo_needs_init_ds(&needs, ta_ds, digest_algo, sigalg);
  else memset(&needs, 0, sizeof(needs));
  if(ta_dnskey)
   algo_needs_init_dnskey_add(&needs, ta_dnskey, sigalg);
 }
 if(ta_ds) {
     num = rrset_get_count(ta_ds);
     for(i=0; i<num; i++) {


  if(!ds_digest_algo_is_supported(ta_ds, i) ||
   !ds_key_algo_is_supported(ta_ds, i) ||
   ds_get_digest_algo(ta_ds, i) != digest_algo)
   continue;




  has_useful_ta = 1;

  sec = verify_dnskeys_with_ds_rr(env, ve, dnskey_rrset,
   ta_ds, i, reason, qstate);
  if(sec == sec_status_secure) {
   if(!sigalg || algo_needs_set_secure(&needs,
    (uint8_t)ds_get_key_algo(ta_ds, i))) {
    verbose(VERB_ALGO, "DS matched DNSKEY.");
    return sec_status_secure;
   }
  } else if(sigalg && sec == sec_status_bogus) {
   algo_needs_set_bogus(&needs,
    (uint8_t)ds_get_key_algo(ta_ds, i));
  }
     }
 }


 if(ta_dnskey) {
     num = rrset_get_count(ta_dnskey);
     for(i=0; i<num; i++) {

  if(!dnskey_algo_is_supported(ta_dnskey, i))
   continue;


  has_useful_ta = 1;

  sec = dnskey_verify_rrset(env, ve, dnskey_rrset,
   ta_dnskey, i, reason, LDNS_SECTION_ANSWER, qstate);
  if(sec == sec_status_secure) {
   if(!sigalg || algo_needs_set_secure(&needs,
    (uint8_t)dnskey_get_algo(ta_dnskey, i))) {
    verbose(VERB_ALGO, "anchor matched DNSKEY.");
    return sec_status_secure;
   }
  } else if(sigalg && sec == sec_status_bogus) {
   algo_needs_set_bogus(&needs,
    (uint8_t)dnskey_get_algo(ta_dnskey, i));
  }
     }
 }


 if(!has_useful_ta) {
  verbose(VERB_ALGO, "No usable trust anchors were found -- "
   "treating as insecure.");
  return sec_status_insecure;
 }

 verbose(VERB_QUERY, "Failed to match any usable anchor to a DNSKEY.");
 if(sigalg && (alg=algo_needs_missing(&needs)) != 0) {
  algo_needs_reason(env, alg, reason, "missing verification of "
   "DNSKEY signature");
 }
 return sec_status_bogus;
}
