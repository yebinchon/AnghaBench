
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {int enc; } ;


 int EVP_EncryptUpdate (int ,int *,int*,int const*,size_t) ;

int crypto_cipher_encrypt(struct crypto_cipher *ctx, const u8 *plain,
     u8 *crypt, size_t len)
{
 int outl;
 if (!EVP_EncryptUpdate(ctx->enc, crypt, &outl, plain, len))
  return -1;
 return 0;
}
