
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,unsigned char const*,unsigned int) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;

int
ldns_digest_evp(const unsigned char* data, unsigned int len, unsigned char* dest,
 const EVP_MD* md)
{
 EVP_MD_CTX* ctx;
 ctx = EVP_MD_CTX_create();
 if(!ctx)
  return 0;
 if(!EVP_DigestInit_ex(ctx, md, ((void*)0)) ||
  !EVP_DigestUpdate(ctx, data, len) ||
  !EVP_DigestFinal_ex(ctx, dest, ((void*)0))) {
  EVP_MD_CTX_destroy(ctx);
  return 0;
 }
 EVP_MD_CTX_destroy(ctx);
 return 1;
}
