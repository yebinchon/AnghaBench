
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int ldns_status ;
typedef int ldns_buffer ;
typedef int EVP_PKEY ;
typedef int EVP_MD ;


 int EVP_PKEY_free (int *) ;
 int * EVP_sha256 () ;
 int * EVP_sha384 () ;
 scalar_t__ LDNS_ECDSAP256SHA256 ;
 int LDNS_STATUS_CRYPTO_BOGUS ;
 int * ldns_ecdsa2pkey_raw (unsigned char*,size_t,scalar_t__) ;
 int ldns_verify_rrsig_evp_raw (unsigned char*,size_t,int *,int *,int const*) ;

__attribute__((used)) static ldns_status
ldns_verify_rrsig_ecdsa_raw(unsigned char* sig, size_t siglen,
 ldns_buffer* rrset, unsigned char* key, size_t keylen, uint8_t algo)
{
        EVP_PKEY *evp_key;
        ldns_status result;
        const EVP_MD *d;

        evp_key = ldns_ecdsa2pkey_raw(key, keylen, algo);
        if(!evp_key) {

  return LDNS_STATUS_CRYPTO_BOGUS;
        }
        if(algo == LDNS_ECDSAP256SHA256)
                d = EVP_sha256();
        else d = EVP_sha384();
 result = ldns_verify_rrsig_evp_raw(sig, siglen, rrset, evp_key, d);
 EVP_PKEY_free(evp_key);
 return result;
}
