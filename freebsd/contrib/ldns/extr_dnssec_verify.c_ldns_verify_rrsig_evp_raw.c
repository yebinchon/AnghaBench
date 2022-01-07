
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_buffer ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int EVP_MD_CTX_destroy (int *) ;
 int EVP_MD_CTX_init (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_VerifyFinal (int *,unsigned char const*,unsigned int,int *) ;
 int EVP_VerifyInit (int *,int const*) ;
 int EVP_VerifyUpdate (int *,int ,int ) ;
 int LDNS_STATUS_CRYPTO_BOGUS ;
 int LDNS_STATUS_MEM_ERR ;
 int LDNS_STATUS_OK ;
 int LDNS_STATUS_SSL_ERR ;
 int ldns_buffer_begin (int const*) ;
 int ldns_buffer_position (int const*) ;
 scalar_t__ malloc (int) ;

ldns_status
ldns_verify_rrsig_evp_raw(const unsigned char *sig, size_t siglen,
      const ldns_buffer *rrset, EVP_PKEY *key, const EVP_MD *digest_type)
{
 EVP_MD_CTX *ctx;
 int res;




 ctx = (EVP_MD_CTX*)malloc(sizeof(*ctx));
 if(ctx) EVP_MD_CTX_init(ctx);

 if(!ctx)
  return LDNS_STATUS_MEM_ERR;

 EVP_VerifyInit(ctx, digest_type);
 EVP_VerifyUpdate(ctx,
      ldns_buffer_begin(rrset),
      ldns_buffer_position(rrset));
 res = EVP_VerifyFinal(ctx, sig, (unsigned int) siglen, key);

 EVP_MD_CTX_destroy(ctx);

 if (res == 1) {
  return LDNS_STATUS_OK;
 } else if (res == 0) {
  return LDNS_STATUS_CRYPTO_BOGUS;
 }


 return LDNS_STATUS_SSL_ERR;
}
