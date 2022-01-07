
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {int dec; } ;


 int EVP_DecryptUpdate (int ,int *,int*,int const*,size_t) ;

int crypto_cipher_decrypt(struct crypto_cipher *ctx, const u8 *crypt,
     u8 *plain, size_t len)
{
 int outl;
 outl = len;
 if (!EVP_DecryptUpdate(ctx->dec, plain, &outl, crypt, len))
  return -1;
 return 0;
}
