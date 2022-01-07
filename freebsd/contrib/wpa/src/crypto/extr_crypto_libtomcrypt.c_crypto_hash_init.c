
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int hmac; int md; } ;
struct crypto_hash {int alg; TYPE_1__ u; } ;
typedef enum crypto_hash_alg { ____Placeholder_crypto_hash_alg } crypto_hash_alg ;






 int CRYPT_OK ;
 int find_hash (char*) ;
 int hmac_init (int *,int ,int const*,size_t) ;
 int md5_init (int *) ;
 int os_free (struct crypto_hash*) ;
 struct crypto_hash* os_zalloc (int) ;
 int sha1_init (int *) ;

struct crypto_hash * crypto_hash_init(enum crypto_hash_alg alg, const u8 *key,
          size_t key_len)
{
 struct crypto_hash *ctx;

 ctx = os_zalloc(sizeof(*ctx));
 if (ctx == ((void*)0))
  return ((void*)0);

 ctx->alg = alg;

 switch (alg) {
 case 129:
  if (md5_init(&ctx->u.md) != CRYPT_OK)
   goto fail;
  break;
 case 128:
  if (sha1_init(&ctx->u.md) != CRYPT_OK)
   goto fail;
  break;
 case 131:
  if (hmac_init(&ctx->u.hmac, find_hash("md5"), key, key_len) !=
      CRYPT_OK)
   goto fail;
  break;
 case 130:
  if (hmac_init(&ctx->u.hmac, find_hash("sha1"), key, key_len) !=
      CRYPT_OK)
   goto fail;
  break;
 default:
  goto fail;
 }

 return ctx;

fail:
 os_free(ctx);
 return ((void*)0);
}
