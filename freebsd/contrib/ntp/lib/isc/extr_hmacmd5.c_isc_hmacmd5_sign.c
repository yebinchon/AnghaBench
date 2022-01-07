
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int opad ;
struct TYPE_4__ {unsigned char* key; int md5ctx; } ;
typedef TYPE_1__ isc_hmacmd5_t ;


 int ISC_MD5_DIGESTLENGTH ;
 int OPAD ;
 int PADLEN ;
 int isc_hmacmd5_invalidate (TYPE_1__*) ;
 int isc_md5_final (int *,unsigned char*) ;
 int isc_md5_init (int *) ;
 int isc_md5_update (int *,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

void
isc_hmacmd5_sign(isc_hmacmd5_t *ctx, unsigned char *digest) {
 unsigned char opad[PADLEN];
 int i;

 isc_md5_final(&ctx->md5ctx, digest);

 memset(opad, OPAD, sizeof(opad));
 for (i = 0; i < PADLEN; i++)
  opad[i] ^= ctx->key[i];

 isc_md5_init(&ctx->md5ctx);
 isc_md5_update(&ctx->md5ctx, opad, sizeof(opad));
 isc_md5_update(&ctx->md5ctx, digest, ISC_MD5_DIGESTLENGTH);
 isc_md5_final(&ctx->md5ctx, digest);
 isc_hmacmd5_invalidate(ctx);
}
