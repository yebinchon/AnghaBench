
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int opad ;
typedef int newdigest ;
struct TYPE_3__ {unsigned char* key; int sha224ctx; } ;
typedef TYPE_1__ isc_hmacsha224_t ;


 int ISC_SHA224_BLOCK_LENGTH ;
 int ISC_SHA224_DIGESTLENGTH ;
 int OPAD ;
 int REQUIRE (int) ;
 int isc_sha224_final (unsigned char*,int *) ;
 int isc_sha224_init (int *) ;
 int isc_sha224_update (int *,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,int) ;

void
isc_hmacsha224_sign(isc_hmacsha224_t *ctx, unsigned char *digest, size_t len) {
 unsigned char opad[ISC_SHA224_BLOCK_LENGTH];
 unsigned char newdigest[ISC_SHA224_DIGESTLENGTH];
 unsigned int i;

 REQUIRE(len <= ISC_SHA224_DIGESTLENGTH);
 isc_sha224_final(newdigest, &ctx->sha224ctx);

 memset(opad, OPAD, sizeof(opad));
 for (i = 0; i < ISC_SHA224_BLOCK_LENGTH; i++)
  opad[i] ^= ctx->key[i];

 isc_sha224_init(&ctx->sha224ctx);
 isc_sha224_update(&ctx->sha224ctx, opad, sizeof(opad));
 isc_sha224_update(&ctx->sha224ctx, newdigest, ISC_SHA224_DIGESTLENGTH);
 isc_sha224_final(newdigest, &ctx->sha224ctx);
 memcpy(digest, newdigest, len);
 memset(newdigest, 0, sizeof(newdigest));
}
