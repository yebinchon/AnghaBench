
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int hmac; int md; } ;
struct crypto_hash {int error; int alg; TYPE_1__ u; } ;






 int CRYPT_OK ;
 int hmac_process (int *,int const*,size_t) ;
 int md5_process (int *,int const*,size_t) ;
 int sha1_process (int *,int const*,size_t) ;

void crypto_hash_update(struct crypto_hash *ctx, const u8 *data, size_t len)
{
 if (ctx == ((void*)0) || ctx->error)
  return;

 switch (ctx->alg) {
 case 129:
  ctx->error = md5_process(&ctx->u.md, data, len) != CRYPT_OK;
  break;
 case 128:
  ctx->error = sha1_process(&ctx->u.md, data, len) != CRYPT_OK;
  break;
 case 131:
 case 130:
  ctx->error = hmac_process(&ctx->u.hmac, data, len) != CRYPT_OK;
  break;
 }
}
