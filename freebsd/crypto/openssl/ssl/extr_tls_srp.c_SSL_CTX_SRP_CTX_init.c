
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int strength; } ;
struct ssl_ctx_st {TYPE_1__ srp_ctx; } ;


 int SRP_MINIMAL_N ;
 int memset (TYPE_1__*,int ,int) ;

int SSL_CTX_SRP_CTX_init(struct ssl_ctx_st *ctx)
{
    if (ctx == ((void*)0))
        return 0;

    memset(&ctx->srp_ctx, 0, sizeof(ctx->srp_ctx));
    ctx->srp_ctx.strength = SRP_MINIMAL_N;

    return 1;
}
