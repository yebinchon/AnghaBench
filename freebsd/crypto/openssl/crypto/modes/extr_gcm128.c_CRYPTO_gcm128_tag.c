
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int c; } ;
struct TYPE_6__ {TYPE_1__ Xi; } ;
typedef TYPE_2__ GCM128_CONTEXT ;


 int CRYPTO_gcm128_finish (TYPE_2__*,int *,int ) ;
 int memcpy (unsigned char*,int ,size_t) ;

void CRYPTO_gcm128_tag(GCM128_CONTEXT *ctx, unsigned char *tag, size_t len)
{
    CRYPTO_gcm128_finish(ctx, ((void*)0), 0);
    memcpy(tag, ctx->Xi.c,
           len <= sizeof(ctx->Xi.c) ? len : sizeof(ctx->Xi.c));
}
