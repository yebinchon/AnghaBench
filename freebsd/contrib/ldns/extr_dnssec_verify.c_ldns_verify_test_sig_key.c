
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int ldns_status ;
typedef int const ldns_rr ;
typedef int ldns_buffer ;


 int LDNS_MAX_PACKETLEN ;
 int LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY ;
 int LDNS_STATUS_CRYPTO_NO_RRSIG ;
 int LDNS_STATUS_ERR ;
 int LDNS_STATUS_MISSING_RDATA_FIELDS_KEY ;
 int LDNS_STATUS_MISSING_RDATA_FIELDS_RRSIG ;
 scalar_t__ LDNS_STATUS_OK ;
 int ldns_buffer_free (int *) ;
 int * ldns_buffer_new (int ) ;
 scalar_t__ ldns_calc_keytag (int const*) ;
 scalar_t__ ldns_rdf2buffer_wire (int *,int *) ;
 scalar_t__ ldns_rdf2native_int16 (int ) ;
 scalar_t__ ldns_rdf2native_int8 (int *) ;
 int * ldns_rr_rdf (int const*,int) ;
 int ldns_rr_rrsig_keytag (int const*) ;
 int ldns_verify_rrsig_buffers (int *,int *,int *,scalar_t__) ;

__attribute__((used)) static ldns_status
ldns_verify_test_sig_key(ldns_buffer* rawsig_buf, ldns_buffer* verify_buf,
 const ldns_rr* rrsig, ldns_rr* key)
{
 uint8_t sig_algo;

 if (rrsig == ((void*)0)) {
  return LDNS_STATUS_CRYPTO_NO_RRSIG;
 }
 if (ldns_rr_rdf(rrsig, 1) == ((void*)0)) {
  return LDNS_STATUS_MISSING_RDATA_FIELDS_RRSIG;
 }
 sig_algo = ldns_rdf2native_int8(ldns_rr_rdf(rrsig, 1));


 if (ldns_calc_keytag(key)
     ==
     ldns_rdf2native_int16(ldns_rr_rrsig_keytag(rrsig))
     ) {
  ldns_buffer* key_buf = ldns_buffer_new(LDNS_MAX_PACKETLEN);
  ldns_status result = LDNS_STATUS_ERR;



  if (ldns_rr_rdf(key, 3) == ((void*)0)) {
   ldns_buffer_free(key_buf);
   return LDNS_STATUS_MISSING_RDATA_FIELDS_KEY;
  }
  if (ldns_rdf2buffer_wire(key_buf, ldns_rr_rdf(key, 3))
           != LDNS_STATUS_OK) {
   ldns_buffer_free(key_buf);



   return LDNS_STATUS_ERR;
  }

  if (ldns_rr_rdf(key, 2) == ((void*)0)) {
   result = LDNS_STATUS_MISSING_RDATA_FIELDS_KEY;
  }
  else if (sig_algo == ldns_rdf2native_int8(
     ldns_rr_rdf(key, 2))) {
   result = ldns_verify_rrsig_buffers(rawsig_buf,
    verify_buf, key_buf, sig_algo);
  } else {

   result = LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY;
  }

  ldns_buffer_free(key_buf);
  return result;
 }
 else {

  return LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY;
 }
}
