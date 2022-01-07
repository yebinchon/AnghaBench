
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_status ;
typedef int ldns_rr ;
typedef int ldns_buffer ;
 int LDNS_STATUS_CRYPTO_ALGO_NOT_IMPL ;
 int LDNS_STATUS_CRYPTO_NO_RRSIG ;
 int LDNS_STATUS_CRYPTO_UNKNOWN_ALGO ;
 int LDNS_STATUS_MEM_ERR ;
 int LDNS_STATUS_MISSING_RDATA_FIELDS_RRSIG ;
 int LDNS_STATUS_OK ;
 int ldns_convert_dsa_rrsig_rdf2asn1 (int *,int *) ;
 int ldns_convert_ecdsa_rrsig_rdf2asn1 (int *,int *) ;
 int ldns_convert_ed25519_rrsig_rdf2asn1 (int *,int *) ;
 int ldns_convert_ed448_rrsig_rdf2asn1 (int *,int *) ;
 int ldns_rdf2buffer_wire (int *,int *) ;
 int ldns_rdf2native_int8 (int *) ;
 int * ldns_rr_rdf (int const*,int) ;

__attribute__((used)) static ldns_status
ldns_rrsig2rawsig_buffer(ldns_buffer* rawsig_buf, const ldns_rr* rrsig)
{
 uint8_t sig_algo;

 if (rrsig == ((void*)0)) {
  return LDNS_STATUS_CRYPTO_NO_RRSIG;
 }
 if (ldns_rr_rdf(rrsig, 1) == ((void*)0)) {
  return LDNS_STATUS_MISSING_RDATA_FIELDS_RRSIG;
 }
 sig_algo = ldns_rdf2native_int8(ldns_rr_rdf(rrsig, 1));







 switch(sig_algo) {
 case 132:
 case 131:
 case 130:







  if (ldns_rr_rdf(rrsig, 8) == ((void*)0)) {
   return LDNS_STATUS_MISSING_RDATA_FIELDS_RRSIG;
  }
  if (ldns_rdf2buffer_wire(rawsig_buf, ldns_rr_rdf(rrsig, 8))
           != LDNS_STATUS_OK) {
   return LDNS_STATUS_MEM_ERR;
  }
  break;
 case 142:
 case 139:
 case 133:
  return LDNS_STATUS_CRYPTO_ALGO_NOT_IMPL;
 default:
  return LDNS_STATUS_CRYPTO_UNKNOWN_ALGO;
 }
 return LDNS_STATUS_OK;
}
