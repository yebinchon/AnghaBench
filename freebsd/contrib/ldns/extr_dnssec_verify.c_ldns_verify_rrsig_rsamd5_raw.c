
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_buffer ;
typedef int EVP_PKEY ;


 scalar_t__ EVP_PKEY_assign_RSA (int *,int ) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 int EVP_md5 () ;
 int LDNS_STATUS_SSL_ERR ;
 int ldns_key_buf2rsa_raw (unsigned char*,size_t) ;
 int ldns_verify_rrsig_evp_raw (unsigned char*,size_t,int *,int *,int ) ;

ldns_status
ldns_verify_rrsig_rsamd5_raw(unsigned char* sig,
         size_t siglen,
         ldns_buffer* rrset,
         unsigned char* key,
         size_t keylen)
{
 EVP_PKEY *evp_key;
 ldns_status result;

 evp_key = EVP_PKEY_new();
 if (EVP_PKEY_assign_RSA(evp_key, ldns_key_buf2rsa_raw(key, keylen))) {
  result = ldns_verify_rrsig_evp_raw(sig,
        siglen,
        rrset,
        evp_key,
        EVP_md5());
 } else {
  result = LDNS_STATUS_SSL_ERR;
 }
 EVP_PKEY_free(evp_key);

 return result;
}
