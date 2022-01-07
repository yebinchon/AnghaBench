
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int arcfour_ctx; } ;
struct crypto_cipher {int alg; TYPE_1__ u; } ;
typedef enum crypto_cipher_alg { ____Placeholder_crypto_cipher_alg } crypto_cipher_alg ;



 int nettle_arcfour_set_key (int *,size_t,int const*) ;
 int os_free (struct crypto_cipher*) ;
 struct crypto_cipher* os_zalloc (int) ;

struct crypto_cipher * crypto_cipher_init(enum crypto_cipher_alg alg,
       const u8 *iv, const u8 *key,
       size_t key_len)
{
 struct crypto_cipher *ctx;

 ctx = os_zalloc(sizeof(*ctx));
 if (!ctx)
  return ((void*)0);

 ctx->alg = alg;

 switch (alg) {
 case 128:
  nettle_arcfour_set_key(&ctx->u.arcfour_ctx, key_len, key);
  break;
 default:
  os_free(ctx);
  return ((void*)0);
 }

 return ctx;
}
