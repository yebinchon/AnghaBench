
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {int dummy; } ;


 int ALG_OP_DECRYPT ;
 int crypto_cipher_oper (struct crypto_cipher*,int ,int const*,int *,size_t) ;

int crypto_cipher_decrypt(struct crypto_cipher *ctx, const u8 *crypt,
     u8 *plain, size_t len)
{
 return crypto_cipher_oper(ctx, ALG_OP_DECRYPT, crypt, plain, len);
}
