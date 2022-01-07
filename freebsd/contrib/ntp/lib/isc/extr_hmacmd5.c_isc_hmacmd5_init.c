
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_md5_t ;
struct TYPE_3__ {unsigned char* key; int md5ctx; } ;
typedef TYPE_1__ isc_hmacmd5_t ;
typedef int ipad ;


 int IPAD ;
 int PADLEN ;
 int isc_md5_final (int *,unsigned char*) ;
 int isc_md5_init (int *) ;
 int isc_md5_update (int *,unsigned char const*,int) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;
 int memset (unsigned char*,int ,int) ;

void
isc_hmacmd5_init(isc_hmacmd5_t *ctx, const unsigned char *key,
   unsigned int len)
{
 unsigned char ipad[PADLEN];
 int i;

 memset(ctx->key, 0, sizeof(ctx->key));
 if (len > sizeof(ctx->key)) {
  isc_md5_t md5ctx;
  isc_md5_init(&md5ctx);
  isc_md5_update(&md5ctx, key, len);
  isc_md5_final(&md5ctx, ctx->key);
 } else
  memcpy(ctx->key, key, len);

 isc_md5_init(&ctx->md5ctx);
 memset(ipad, IPAD, sizeof(ipad));
 for (i = 0; i < PADLEN; i++)
  ipad[i] ^= ctx->key[i];
 isc_md5_update(&ctx->md5ctx, ipad, sizeof(ipad));
}
