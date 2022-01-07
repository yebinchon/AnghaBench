
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
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 int VERB_ALGO ;
 int VERB_QUERY ;
 int algo_needs_init_ds (struct algo_needs*,struct ub_packed_rrset_key*,int,int *) ;
 int algo_needs_missing (struct algo_needs*) ;
 int algo_needs_reason (struct module_env*,int,char**,char*) ;
 int algo_needs_set_bogus (struct algo_needs*,int ) ;
 scalar_t__ algo_needs_set_secure (struct algo_needs*,int ) ;
 int ds_digest_algo_is_supported (struct ub_packed_rrset_key*,size_t) ;
 int ds_get_digest_algo (struct ub_packed_rrset_key*,size_t) ;
 scalar_t__ ds_get_key_algo (struct ub_packed_rrset_key*,size_t) ;
 int ds_key_algo_is_supported (struct ub_packed_rrset_key*,size_t) ;
 scalar_t__ query_dname_compare (int ,int ) ;
 size_t rrset_get_count (struct ub_packed_rrset_key*) ;
 int sec_status_bogus ;
 int sec_status_insecure ;
 int sec_status_secure ;
 int val_favorite_ds_algo (struct ub_packed_rrset_key*) ;
 int verbose (int ,char*) ;
 int verify_dnskeys_with_ds_rr (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,size_t,char**,struct module_qstate*) ;

enum sec_status
val_verify_DNSKEY_with_DS(struct module_env* env, struct val_env* ve,
 struct ub_packed_rrset_key* dnskey_rrset,
 struct ub_packed_rrset_key* ds_rrset, uint8_t* sigalg, char** reason,
 struct module_qstate* qstate)
{


 int has_useful_ds = 0, digest_algo, alg;
 struct algo_needs needs;
 size_t i, num;
 enum sec_status sec;

 if(dnskey_rrset->rk.dname_len != ds_rrset->rk.dname_len ||
  query_dname_compare(dnskey_rrset->rk.dname, ds_rrset->rk.dname)
  != 0) {
  verbose(VERB_QUERY, "DNSKEY RRset did not match DS RRset "
   "by name");
  *reason = "DNSKEY RRset did not match DS RRset by name";
  return sec_status_bogus;
 }

 if(sigalg) {

  digest_algo = val_favorite_ds_algo(ds_rrset);
  algo_needs_init_ds(&needs, ds_rrset, digest_algo, sigalg);
 } else {

  digest_algo = -1;
 }
 num = rrset_get_count(ds_rrset);
 for(i=0; i<num; i++) {


  if(!ds_digest_algo_is_supported(ds_rrset, i) ||
   !ds_key_algo_is_supported(ds_rrset, i) ||
   (sigalg && (ds_get_digest_algo(ds_rrset, i) != digest_algo))) {
   continue;
  }




  has_useful_ds = 1;

  sec = verify_dnskeys_with_ds_rr(env, ve, dnskey_rrset,
   ds_rrset, i, reason, qstate);
  if(sec == sec_status_secure) {
   if(!sigalg || algo_needs_set_secure(&needs,
    (uint8_t)ds_get_key_algo(ds_rrset, i))) {
    verbose(VERB_ALGO, "DS matched DNSKEY.");
    return sec_status_secure;
   }
  } else if(sigalg && sec == sec_status_bogus) {
   algo_needs_set_bogus(&needs,
    (uint8_t)ds_get_key_algo(ds_rrset, i));
  }
 }




 if(!has_useful_ds) {
  verbose(VERB_ALGO, "No usable DS records were found -- "
   "treating as insecure.");
  return sec_status_insecure;
 }

 verbose(VERB_QUERY, "Failed to match any usable DS to a DNSKEY.");
 if(sigalg && (alg=algo_needs_missing(&needs)) != 0) {
  algo_needs_reason(env, alg, reason, "missing verification of "
   "DNSKEY signature");
 }
 return sec_status_bogus;
}
