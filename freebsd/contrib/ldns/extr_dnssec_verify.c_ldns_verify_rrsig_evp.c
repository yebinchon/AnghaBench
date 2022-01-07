
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_buffer ;
typedef int EVP_PKEY ;
typedef int EVP_MD ;


 scalar_t__ ldns_buffer_begin (int *) ;
 int ldns_buffer_position (int *) ;
 int ldns_verify_rrsig_evp_raw (unsigned char*,int ,int *,int *,int const*) ;

ldns_status
ldns_verify_rrsig_evp(ldns_buffer *sig,
      ldns_buffer *rrset,
      EVP_PKEY *key,
      const EVP_MD *digest_type)
{
 return ldns_verify_rrsig_evp_raw(
    (unsigned char*)ldns_buffer_begin(sig),
    ldns_buffer_position(sig),
    rrset,
    key,
    digest_type);
}
