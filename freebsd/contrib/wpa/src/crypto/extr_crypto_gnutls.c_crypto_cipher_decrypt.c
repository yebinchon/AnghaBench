
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {int dec; } ;


 scalar_t__ GPG_ERR_NO_ERROR ;
 scalar_t__ gcry_cipher_decrypt (int ,int *,size_t,int const*,size_t) ;

int crypto_cipher_decrypt(struct crypto_cipher *ctx, const u8 *crypt,
     u8 *plain, size_t len)
{
 if (gcry_cipher_decrypt(ctx->dec, plain, len, crypt, len) !=
     GPG_ERR_NO_ERROR)
  return -1;
 return 0;
}
