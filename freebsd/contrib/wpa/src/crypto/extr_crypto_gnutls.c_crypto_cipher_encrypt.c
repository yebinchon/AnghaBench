
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {int enc; } ;


 scalar_t__ GPG_ERR_NO_ERROR ;
 scalar_t__ gcry_cipher_encrypt (int ,int *,size_t,int const*,size_t) ;

int crypto_cipher_encrypt(struct crypto_cipher *ctx, const u8 *plain,
     u8 *crypt, size_t len)
{
 if (gcry_cipher_encrypt(ctx->enc, crypt, len, plain, len) !=
     GPG_ERR_NO_ERROR)
  return -1;
 return 0;
}
