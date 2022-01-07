
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_sha1_t ;
struct TYPE_3__ {unsigned char* key; int sha1ctx; } ;
typedef TYPE_1__ isc_hmacsha1_t ;
typedef int ipad ;


 int IPAD ;
 int ISC_SHA1_BLOCK_LENGTH ;
 int isc_sha1_final (int *,unsigned char*) ;
 int isc_sha1_init (int *) ;
 int isc_sha1_update (int *,unsigned char const*,int) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;
 int memset (unsigned char*,int ,int) ;

void
isc_hmacsha1_init(isc_hmacsha1_t *ctx, const unsigned char *key,
    unsigned int len)
{
 unsigned char ipad[ISC_SHA1_BLOCK_LENGTH];
 unsigned int i;

 memset(ctx->key, 0, sizeof(ctx->key));
 if (len > sizeof(ctx->key)) {
  isc_sha1_t sha1ctx;
  isc_sha1_init(&sha1ctx);
  isc_sha1_update(&sha1ctx, key, len);
  isc_sha1_final(&sha1ctx, ctx->key);
 } else
  memcpy(ctx->key, key, len);

 isc_sha1_init(&ctx->sha1ctx);
 memset(ipad, IPAD, sizeof(ipad));
 for (i = 0; i < ISC_SHA1_BLOCK_LENGTH; i++)
  ipad[i] ^= ctx->key[i];
 isc_sha1_update(&ctx->sha1ctx, ipad, sizeof(ipad));
}
