
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_hash {int ctx; } ;


 int HMAC_CTX_free (int ) ;
 int HMAC_Final (int ,int *,unsigned int*) ;
 scalar_t__ TEST_FAIL () ;
 int bin_clear_free (struct crypto_hash*,int) ;

int crypto_hash_finish(struct crypto_hash *ctx, u8 *mac, size_t *len)
{
 unsigned int mdlen;
 int res;

 if (ctx == ((void*)0))
  return -2;

 if (mac == ((void*)0) || len == ((void*)0)) {
  HMAC_CTX_free(ctx->ctx);
  bin_clear_free(ctx, sizeof(*ctx));
  return 0;
 }

 mdlen = *len;
 res = HMAC_Final(ctx->ctx, mac, &mdlen);
 HMAC_CTX_free(ctx->ctx);
 bin_clear_free(ctx, sizeof(*ctx));

 if (TEST_FAIL())
  return -1;

 if (res == 1) {
  *len = mdlen;
  return 0;
 }

 return -1;
}
