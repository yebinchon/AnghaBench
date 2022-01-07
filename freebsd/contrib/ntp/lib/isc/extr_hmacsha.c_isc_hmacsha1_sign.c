
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int opad ;
typedef int newdigest ;
struct TYPE_4__ {unsigned char* key; int sha1ctx; } ;
typedef TYPE_1__ isc_hmacsha1_t ;


 int ISC_SHA1_BLOCK_LENGTH ;
 int ISC_SHA1_DIGESTLENGTH ;
 int OPAD ;
 int REQUIRE (int) ;
 int isc_hmacsha1_invalidate (TYPE_1__*) ;
 int isc_sha1_final (int *,unsigned char*) ;
 int isc_sha1_init (int *) ;
 int isc_sha1_update (int *,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,int) ;

void
isc_hmacsha1_sign(isc_hmacsha1_t *ctx, unsigned char *digest, size_t len) {
 unsigned char opad[ISC_SHA1_BLOCK_LENGTH];
 unsigned char newdigest[ISC_SHA1_DIGESTLENGTH];
 unsigned int i;

 REQUIRE(len <= ISC_SHA1_DIGESTLENGTH);
 isc_sha1_final(&ctx->sha1ctx, newdigest);

 memset(opad, OPAD, sizeof(opad));
 for (i = 0; i < ISC_SHA1_BLOCK_LENGTH; i++)
  opad[i] ^= ctx->key[i];

 isc_sha1_init(&ctx->sha1ctx);
 isc_sha1_update(&ctx->sha1ctx, opad, sizeof(opad));
 isc_sha1_update(&ctx->sha1ctx, newdigest, ISC_SHA1_DIGESTLENGTH);
 isc_sha1_final(&ctx->sha1ctx, newdigest);
 isc_hmacsha1_invalidate(ctx);
 memcpy(digest, newdigest, len);
 memset(newdigest, 0, sizeof(newdigest));
}
