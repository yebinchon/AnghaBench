
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_sha512_t ;
struct TYPE_3__ {unsigned char* key; int sha512ctx; } ;
typedef TYPE_1__ isc_hmacsha512_t ;
typedef int ipad ;


 int IPAD ;
 int ISC_SHA512_BLOCK_LENGTH ;
 int isc_sha512_final (unsigned char*,int *) ;
 int isc_sha512_init (int *) ;
 int isc_sha512_update (int *,unsigned char const*,int) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;
 int memset (unsigned char*,int ,int) ;

void
isc_hmacsha512_init(isc_hmacsha512_t *ctx, const unsigned char *key,
      unsigned int len)
{
 unsigned char ipad[ISC_SHA512_BLOCK_LENGTH];
 unsigned int i;

 memset(ctx->key, 0, sizeof(ctx->key));
 if (len > sizeof(ctx->key)) {
  isc_sha512_t sha512ctx;
  isc_sha512_init(&sha512ctx);
  isc_sha512_update(&sha512ctx, key, len);
  isc_sha512_final(ctx->key, &sha512ctx);
 } else
  memcpy(ctx->key, key, len);

 isc_sha512_init(&ctx->sha512ctx);
 memset(ipad, IPAD, sizeof(ipad));
 for (i = 0; i < ISC_SHA512_BLOCK_LENGTH; i++)
  ipad[i] ^= ctx->key[i];
 isc_sha512_update(&ctx->sha512ctx, ipad, sizeof(ipad));
}
