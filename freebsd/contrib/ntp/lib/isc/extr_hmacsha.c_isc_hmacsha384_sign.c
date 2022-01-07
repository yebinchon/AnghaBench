
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int opad ;
typedef int newdigest ;
struct TYPE_3__ {unsigned char* key; int sha384ctx; } ;
typedef TYPE_1__ isc_hmacsha384_t ;


 int ISC_SHA384_BLOCK_LENGTH ;
 int ISC_SHA384_DIGESTLENGTH ;
 int OPAD ;
 int REQUIRE (int) ;
 int isc_sha384_final (unsigned char*,int *) ;
 int isc_sha384_init (int *) ;
 int isc_sha384_update (int *,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,int) ;

void
isc_hmacsha384_sign(isc_hmacsha384_t *ctx, unsigned char *digest, size_t len) {
 unsigned char opad[ISC_SHA384_BLOCK_LENGTH];
 unsigned char newdigest[ISC_SHA384_DIGESTLENGTH];
 unsigned int i;

 REQUIRE(len <= ISC_SHA384_DIGESTLENGTH);
 isc_sha384_final(newdigest, &ctx->sha384ctx);

 memset(opad, OPAD, sizeof(opad));
 for (i = 0; i < ISC_SHA384_BLOCK_LENGTH; i++)
  opad[i] ^= ctx->key[i];

 isc_sha384_init(&ctx->sha384ctx);
 isc_sha384_update(&ctx->sha384ctx, opad, sizeof(opad));
 isc_sha384_update(&ctx->sha384ctx, newdigest, ISC_SHA384_DIGESTLENGTH);
 isc_sha384_final(newdigest, &ctx->sha384ctx);
 memcpy(digest, newdigest, len);
 memset(newdigest, 0, sizeof(newdigest));
}
