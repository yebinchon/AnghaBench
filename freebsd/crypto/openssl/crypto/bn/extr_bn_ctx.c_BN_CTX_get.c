
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int too_many; int used; int flags; int pool; scalar_t__ err_stack; } ;
typedef TYPE_1__ BN_CTX ;
typedef TYPE_2__ BIGNUM ;


 int BN_FLG_CONSTTIME ;
 int BN_F_BN_CTX_GET ;
 TYPE_2__* BN_POOL_get (int *,int ) ;
 int BN_R_TOO_MANY_TEMPORARY_VARIABLES ;
 int BN_zero (TYPE_2__*) ;
 int BNerr (int ,int ) ;
 int CTXDBG_ENTRY (char*,TYPE_1__*) ;
 int CTXDBG_RET (TYPE_1__*,TYPE_2__*) ;

BIGNUM *BN_CTX_get(BN_CTX *ctx)
{
    BIGNUM *ret;

    CTXDBG_ENTRY("BN_CTX_get", ctx);
    if (ctx->err_stack || ctx->too_many)
        return ((void*)0);
    if ((ret = BN_POOL_get(&ctx->pool, ctx->flags)) == ((void*)0)) {




        ctx->too_many = 1;
        BNerr(BN_F_BN_CTX_GET, BN_R_TOO_MANY_TEMPORARY_VARIABLES);
        return ((void*)0);
    }

    BN_zero(ret);

    ret->flags &= (~BN_FLG_CONSTTIME);
    ctx->used++;
    CTXDBG_RET(ctx, ret);
    return ret;
}
