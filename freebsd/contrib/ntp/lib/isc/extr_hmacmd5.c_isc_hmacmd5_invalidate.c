
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; int md5ctx; } ;
typedef TYPE_1__ isc_hmacmd5_t ;


 int isc_md5_invalidate (int *) ;
 int memset (int ,int ,int) ;

void
isc_hmacmd5_invalidate(isc_hmacmd5_t *ctx) {
 isc_md5_invalidate(&ctx->md5ctx);
 memset(ctx->key, 0, sizeof(ctx->key));
}
