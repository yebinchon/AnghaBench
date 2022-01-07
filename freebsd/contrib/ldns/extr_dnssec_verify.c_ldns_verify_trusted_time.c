
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int time_t ;
typedef int ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_resolver ;


 int LDNS_STATUS_CRYPTO_NO_RRSIG ;
 int LDNS_STATUS_ERR ;
 int LDNS_STATUS_OK ;
 int * ldns_fetch_valid_domain_keys_time (int *,int ,int ,int ,int *) ;
 int ldns_resolver_dnssec_anchors (int *) ;
 int ldns_rr_clone (int *) ;
 int ldns_rr_list_deep_free (int *) ;
 int ldns_rr_list_push_rr (int *,int ) ;
 int * ldns_rr_list_rr (int *,int) ;
 int ldns_rr_list_rr_count (int *) ;
 int ldns_rr_rrsig_signame (int *) ;
 int ldns_verify_rrsig_time (int *,int *,int *,int ) ;

ldns_status
ldns_verify_trusted_time(
  ldns_resolver *res,
  ldns_rr_list *rrset,
  ldns_rr_list * rrsigs,
  time_t check_time,
  ldns_rr_list * validating_keys
  )
{
 uint16_t sig_i; uint16_t key_i;
 ldns_rr * cur_sig; ldns_rr * cur_key;
 ldns_rr_list * trusted_keys = ((void*)0);
 ldns_status result = LDNS_STATUS_ERR;

 if (!res || !rrset || !rrsigs) {
  return LDNS_STATUS_ERR;
 }

 if (ldns_rr_list_rr_count(rrset) < 1) {
  return LDNS_STATUS_ERR;
 }

 if (ldns_rr_list_rr_count(rrsigs) < 1) {
  return LDNS_STATUS_CRYPTO_NO_RRSIG;
 }


 for (sig_i=0; sig_i < ldns_rr_list_rr_count(rrsigs); sig_i++) {

  cur_sig = ldns_rr_list_rr(rrsigs, sig_i);

  if ((trusted_keys = ldns_fetch_valid_domain_keys_time(
     res,
     ldns_rr_rrsig_signame(cur_sig),
     ldns_resolver_dnssec_anchors(res),
     check_time,
     &result))) {

   for (key_i = 0;
    key_i < ldns_rr_list_rr_count(trusted_keys);
    key_i++) {
    cur_key = ldns_rr_list_rr(trusted_keys, key_i);

    if ((result = ldns_verify_rrsig_time(rrset,
        cur_sig,
        cur_key,
        check_time))
        == LDNS_STATUS_OK) {
     if (validating_keys) {
      ldns_rr_list_push_rr(validating_keys,
           ldns_rr_clone(cur_key));
     }
     ldns_rr_list_deep_free(trusted_keys);
     return LDNS_STATUS_OK;
    }
   }
  }
 }

 ldns_rr_list_deep_free(trusted_keys);
 return result;
}
