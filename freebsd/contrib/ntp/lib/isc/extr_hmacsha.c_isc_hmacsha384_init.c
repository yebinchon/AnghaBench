
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_sha384_t ;
struct TYPE_3__ {unsigned char* key; int sha384ctx; } ;
typedef TYPE_1__ isc_hmacsha384_t ;
typedef int ipad ;


 int IPAD ;
 int ISC_SHA384_BLOCK_LENGTH ;
 int isc_sha384_final (unsigned char*,int *) ;
 int isc_sha384_init (int *) ;
 int isc_sha384_update (int *,unsigned char const*,int) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;
 int memset (unsigned char*,int ,int) ;

void
isc_hmacsha384_init(isc_hmacsha384_t *ctx, const unsigned char *key,
      unsigned int len)
{
 unsigned char ipad[ISC_SHA384_BLOCK_LENGTH];
 unsigned int i;

 memset(ctx->key, 0, sizeof(ctx->key));
 if (len > sizeof(ctx->key)) {
  isc_sha384_t sha384ctx;
  isc_sha384_init(&sha384ctx);
  isc_sha384_update(&sha384ctx, key, len);
  isc_sha384_final(ctx->key, &sha384ctx);
 } else
  memcpy(ctx->key, key, len);

 isc_sha384_init(&ctx->sha384ctx);
 memset(ipad, IPAD, sizeof(ipad));
 for (i = 0; i < ISC_SHA384_BLOCK_LENGTH; i++)
  ipad[i] ^= ctx->key[i];
 isc_sha384_update(&ctx->sha384ctx, ipad, sizeof(ipad));
}
