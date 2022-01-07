
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_sha256_t ;
struct TYPE_3__ {unsigned char* key; int sha256ctx; } ;
typedef TYPE_1__ isc_hmacsha256_t ;
typedef int ipad ;


 int IPAD ;
 int ISC_SHA256_BLOCK_LENGTH ;
 int isc_sha256_final (unsigned char*,int *) ;
 int isc_sha256_init (int *) ;
 int isc_sha256_update (int *,unsigned char const*,int) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;
 int memset (unsigned char*,int ,int) ;

void
isc_hmacsha256_init(isc_hmacsha256_t *ctx, const unsigned char *key,
      unsigned int len)
{
 unsigned char ipad[ISC_SHA256_BLOCK_LENGTH];
 unsigned int i;

 memset(ctx->key, 0, sizeof(ctx->key));
 if (len > sizeof(ctx->key)) {
  isc_sha256_t sha256ctx;
  isc_sha256_init(&sha256ctx);
  isc_sha256_update(&sha256ctx, key, len);
  isc_sha256_final(ctx->key, &sha256ctx);
 } else
  memcpy(ctx->key, key, len);

 isc_sha256_init(&ctx->sha256ctx);
 memset(ipad, IPAD, sizeof(ipad));
 for (i = 0; i < ISC_SHA256_BLOCK_LENGTH; i++)
  ipad[i] ^= ctx->key[i];
 isc_sha256_update(&ctx->sha256ctx, ipad, sizeof(ipad));
}
