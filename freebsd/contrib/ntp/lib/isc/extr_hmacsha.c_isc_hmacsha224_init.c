
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_sha224_t ;
struct TYPE_3__ {unsigned char* key; int sha224ctx; } ;
typedef TYPE_1__ isc_hmacsha224_t ;
typedef int ipad ;


 int IPAD ;
 int ISC_SHA224_BLOCK_LENGTH ;
 int isc_sha224_final (unsigned char*,int *) ;
 int isc_sha224_init (int *) ;
 int isc_sha224_update (int *,unsigned char const*,int) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;
 int memset (unsigned char*,int ,int) ;

void
isc_hmacsha224_init(isc_hmacsha224_t *ctx, const unsigned char *key,
      unsigned int len)
{
 unsigned char ipad[ISC_SHA224_BLOCK_LENGTH];
 unsigned int i;

 memset(ctx->key, 0, sizeof(ctx->key));
 if (len > sizeof(ctx->key)) {
  isc_sha224_t sha224ctx;
  isc_sha224_init(&sha224ctx);
  isc_sha224_update(&sha224ctx, key, len);
  isc_sha224_final(ctx->key, &sha224ctx);
 } else
  memcpy(ctx->key, key, len);

 isc_sha224_init(&ctx->sha224ctx);
 memset(ipad, IPAD, sizeof(ipad));
 for (i = 0; i < ISC_SHA224_BLOCK_LENGTH; i++)
  ipad[i] ^= ctx->key[i];
 isc_sha224_update(&ctx->sha224ctx, ipad, sizeof(ipad));
}
