
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int opad ;
typedef int newdigest ;
struct TYPE_3__ {unsigned char* key; int sha512ctx; } ;
typedef TYPE_1__ isc_hmacsha512_t ;


 int ISC_SHA512_BLOCK_LENGTH ;
 int ISC_SHA512_DIGESTLENGTH ;
 int OPAD ;
 int REQUIRE (int) ;
 int isc_sha512_final (unsigned char*,int *) ;
 int isc_sha512_init (int *) ;
 int isc_sha512_update (int *,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,int) ;

void
isc_hmacsha512_sign(isc_hmacsha512_t *ctx, unsigned char *digest, size_t len) {
 unsigned char opad[ISC_SHA512_BLOCK_LENGTH];
 unsigned char newdigest[ISC_SHA512_DIGESTLENGTH];
 unsigned int i;

 REQUIRE(len <= ISC_SHA512_DIGESTLENGTH);
 isc_sha512_final(newdigest, &ctx->sha512ctx);

 memset(opad, OPAD, sizeof(opad));
 for (i = 0; i < ISC_SHA512_BLOCK_LENGTH; i++)
  opad[i] ^= ctx->key[i];

 isc_sha512_init(&ctx->sha512ctx);
 isc_sha512_update(&ctx->sha512ctx, opad, sizeof(opad));
 isc_sha512_update(&ctx->sha512ctx, newdigest, ISC_SHA512_DIGESTLENGTH);
 isc_sha512_final(newdigest, &ctx->sha512ctx);
 memcpy(digest, newdigest, len);
 memset(newdigest, 0, sizeof(newdigest));
}
