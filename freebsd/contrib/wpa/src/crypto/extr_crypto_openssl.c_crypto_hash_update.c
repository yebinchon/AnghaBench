
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_hash {int ctx; } ;


 int HMAC_Update (int ,int const*,size_t) ;

void crypto_hash_update(struct crypto_hash *ctx, const u8 *data, size_t len)
{
 if (ctx == ((void*)0))
  return;
 HMAC_Update(ctx->ctx, data, len);
}
