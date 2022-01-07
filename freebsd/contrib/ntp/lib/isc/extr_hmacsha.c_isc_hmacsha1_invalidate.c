
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sha1ctx; } ;
typedef TYPE_1__ isc_hmacsha1_t ;


 int isc_sha1_invalidate (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void
isc_hmacsha1_invalidate(isc_hmacsha1_t *ctx) {
 isc_sha1_invalidate(&ctx->sha1ctx);
 memset(ctx, 0, sizeof(*ctx));
}
