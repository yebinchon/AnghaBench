
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef scalar_t__ ldns_status ;
typedef int const ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_buffer ;


 int LDNS_MAX_PACKETLEN ;
 scalar_t__ LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY ;
 scalar_t__ LDNS_STATUS_ERR ;
 scalar_t__ LDNS_STATUS_MEM_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int ldns_buffer_free (int *) ;
 int * ldns_buffer_new (int ) ;
 scalar_t__ ldns_prepare_for_verify (int *,int *,int const*,int const*) ;
 int ldns_rr_list_cat (int const*,int const*) ;
 int const* ldns_rr_list_clone (int const*) ;
 int ldns_rr_list_deep_free (int const*) ;
 int ldns_rr_list_free (int const*) ;
 int const* ldns_rr_list_new () ;
 int ldns_rr_list_push_rr (int const*,int ) ;
 int ldns_rr_list_rr (int const*,scalar_t__) ;
 scalar_t__ ldns_rr_list_rr_count (int const*) ;
 scalar_t__ ldns_verify_test_sig_key (int *,int *,int const*,int ) ;

ldns_status
ldns_verify_rrsig_keylist_notime(const ldns_rr_list *rrset,
      const ldns_rr *rrsig,
      const ldns_rr_list *keys,
      ldns_rr_list *good_keys)
{
 ldns_buffer *rawsig_buf;
 ldns_buffer *verify_buf;
 uint16_t i;
 ldns_status result, status;
 ldns_rr_list *rrset_clone;
 ldns_rr_list *validkeys;

 if (!rrset) {
  return LDNS_STATUS_ERR;
 }

 validkeys = ldns_rr_list_new();
 if (!validkeys) {
  return LDNS_STATUS_MEM_ERR;
 }


 rrset_clone = ldns_rr_list_clone(rrset);


 rawsig_buf = ldns_buffer_new(LDNS_MAX_PACKETLEN);
 verify_buf = ldns_buffer_new(LDNS_MAX_PACKETLEN);

 result = ldns_prepare_for_verify(rawsig_buf, verify_buf,
  rrset_clone, rrsig);
 if(result != LDNS_STATUS_OK) {
  ldns_buffer_free(verify_buf);
  ldns_buffer_free(rawsig_buf);
  ldns_rr_list_deep_free(rrset_clone);
  ldns_rr_list_free(validkeys);
  return result;
 }

 result = LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY;
 for(i = 0; i < ldns_rr_list_rr_count(keys); i++) {
  status = ldns_verify_test_sig_key(rawsig_buf, verify_buf,
   rrsig, ldns_rr_list_rr(keys, i));
  if (status == LDNS_STATUS_OK) {




   if (!ldns_rr_list_push_rr(validkeys,
    ldns_rr_list_rr(keys,i))) {

    ldns_buffer_free(rawsig_buf);
    ldns_buffer_free(verify_buf);
    ldns_rr_list_deep_free(rrset_clone);
    ldns_rr_list_free(validkeys);
    return LDNS_STATUS_MEM_ERR;
   }

   result = status;
  }

  if (result == LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY) {
   result = status;
  }
 }


 ldns_rr_list_deep_free(rrset_clone);
 ldns_buffer_free(rawsig_buf);
 ldns_buffer_free(verify_buf);

 if (ldns_rr_list_rr_count(validkeys) == 0) {

  ldns_rr_list_free(validkeys);
  return result;
 }



 ldns_rr_list_cat(good_keys, validkeys);
 ldns_rr_list_free(validkeys);
 return LDNS_STATUS_OK;
}
