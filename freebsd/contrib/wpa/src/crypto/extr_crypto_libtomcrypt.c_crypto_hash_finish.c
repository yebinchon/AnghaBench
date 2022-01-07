
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int hmac; int md; } ;
struct crypto_hash {int alg; TYPE_1__ u; scalar_t__ error; } ;






 int CRYPT_OK ;
 scalar_t__ TEST_FAIL () ;
 int hmac_done (int *,int *,unsigned long*) ;
 int md5_done (int *,int *) ;
 int os_free (struct crypto_hash*) ;
 int sha1_done (int *,int *) ;

int crypto_hash_finish(struct crypto_hash *ctx, u8 *mac, size_t *len)
{
 int ret = 0;
 unsigned long clen;

 if (ctx == ((void*)0))
  return -2;

 if (mac == ((void*)0) || len == ((void*)0)) {
  os_free(ctx);
  return 0;
 }

 if (ctx->error) {
  os_free(ctx);
  return -2;
 }

 switch (ctx->alg) {
 case 129:
  if (*len < 16) {
   *len = 16;
   os_free(ctx);
   return -1;
  }
  *len = 16;
  if (md5_done(&ctx->u.md, mac) != CRYPT_OK)
   ret = -2;
  break;
 case 128:
  if (*len < 20) {
   *len = 20;
   os_free(ctx);
   return -1;
  }
  *len = 20;
  if (sha1_done(&ctx->u.md, mac) != CRYPT_OK)
   ret = -2;
  break;
 case 130:
  if (*len < 20) {
   *len = 20;
   os_free(ctx);
   return -1;
  }

 case 131:
  if (*len < 16) {
   *len = 16;
   os_free(ctx);
   return -1;
  }
  clen = *len;
  if (hmac_done(&ctx->u.hmac, mac, &clen) != CRYPT_OK) {
   os_free(ctx);
   return -1;
  }
  *len = clen;
  break;
 default:
  ret = -2;
  break;
 }

 os_free(ctx);

 if (TEST_FAIL())
  return -1;

 return ret;
}
