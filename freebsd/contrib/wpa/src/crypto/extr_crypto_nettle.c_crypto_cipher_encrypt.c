
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int arcfour_ctx; } ;
struct crypto_cipher {int alg; TYPE_1__ u; } ;



 int nettle_arcfour_crypt (int *,size_t,int *,int const*) ;

int crypto_cipher_encrypt(struct crypto_cipher *ctx, const u8 *plain,
     u8 *crypt, size_t len)
{
 switch (ctx->alg) {
 case 128:
  nettle_arcfour_crypt(&ctx->u.arcfour_ctx, len, crypt, plain);
  break;
 default:
  return -1;
 }

 return 0;
}
