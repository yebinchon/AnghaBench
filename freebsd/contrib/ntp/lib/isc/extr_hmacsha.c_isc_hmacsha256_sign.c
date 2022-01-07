
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int opad ;
typedef int newdigest ;
struct TYPE_3__ {unsigned char* key; int sha256ctx; } ;
typedef TYPE_1__ isc_hmacsha256_t ;


 int ISC_SHA256_BLOCK_LENGTH ;
 int ISC_SHA256_DIGESTLENGTH ;
 int OPAD ;
 int REQUIRE (int) ;
 int isc_sha256_final (unsigned char*,int *) ;
 int isc_sha256_init (int *) ;
 int isc_sha256_update (int *,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,int) ;

void
isc_hmacsha256_sign(isc_hmacsha256_t *ctx, unsigned char *digest, size_t len) {
 unsigned char opad[ISC_SHA256_BLOCK_LENGTH];
 unsigned char newdigest[ISC_SHA256_DIGESTLENGTH];
 unsigned int i;

 REQUIRE(len <= ISC_SHA256_DIGESTLENGTH);
 isc_sha256_final(newdigest, &ctx->sha256ctx);

 memset(opad, OPAD, sizeof(opad));
 for (i = 0; i < ISC_SHA256_BLOCK_LENGTH; i++)
  opad[i] ^= ctx->key[i];

 isc_sha256_init(&ctx->sha256ctx);
 isc_sha256_update(&ctx->sha256ctx, opad, sizeof(opad));
 isc_sha256_update(&ctx->sha256ctx, newdigest, ISC_SHA256_DIGESTLENGTH);
 isc_sha256_final(newdigest, &ctx->sha256ctx);
 memcpy(digest, newdigest, len);
 memset(newdigest, 0, sizeof(newdigest));
}
