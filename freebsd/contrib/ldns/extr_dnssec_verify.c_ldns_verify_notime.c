
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ ldns_status ;
typedef int const ldns_rr_list ;


 scalar_t__ LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY ;
 scalar_t__ LDNS_STATUS_CRYPTO_NO_RRSIG ;
 scalar_t__ LDNS_STATUS_CRYPTO_NO_TRUSTED_DNSKEY ;
 scalar_t__ LDNS_STATUS_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int ldns_rr_list_rr (int const*,int) ;
 int ldns_rr_list_rr_count (int const*) ;
 scalar_t__ ldns_verify_rrsig_keylist_notime (int const*,int ,int const*,int const*) ;

ldns_status
ldns_verify_notime(ldns_rr_list *rrset, ldns_rr_list *rrsig,
 const ldns_rr_list *keys, ldns_rr_list *good_keys)
{
 uint16_t i;
 ldns_status verify_result = LDNS_STATUS_ERR;

 if (!rrset || !rrsig || !keys) {
  return LDNS_STATUS_ERR;
 }

 if (ldns_rr_list_rr_count(rrset) < 1) {
  return LDNS_STATUS_ERR;
 }

 if (ldns_rr_list_rr_count(rrsig) < 1) {
  return LDNS_STATUS_CRYPTO_NO_RRSIG;
 }

 if (ldns_rr_list_rr_count(keys) < 1) {
  verify_result = LDNS_STATUS_CRYPTO_NO_TRUSTED_DNSKEY;
 } else {
  for (i = 0; i < ldns_rr_list_rr_count(rrsig); i++) {
   ldns_status s = ldns_verify_rrsig_keylist_notime(rrset,
    ldns_rr_list_rr(rrsig, i), keys, good_keys);


   if (s == LDNS_STATUS_OK) {
    verify_result = LDNS_STATUS_OK;
   } else if (verify_result == LDNS_STATUS_ERR) {
    verify_result = s;
   } else if (s != LDNS_STATUS_ERR && verify_result ==
    LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY) {
    verify_result = s;
   }
  }
 }
 return verify_result;
}
