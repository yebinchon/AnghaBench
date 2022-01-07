
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int chain; int verify_cb; struct TYPE_8__* parent; int param; int crls; int untrusted; int ctx; } ;
typedef TYPE_1__ X509_STORE_CTX ;
typedef int X509 ;


 int X509_STORE_CTX_cleanup (TYPE_1__*) ;
 int X509_STORE_CTX_init (TYPE_1__*,int ,int *,int ) ;
 int X509_STORE_CTX_set0_param (TYPE_1__*,int ) ;
 int X509_verify_cert (TYPE_1__*) ;
 int check_crl_chain (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int check_crl_path(X509_STORE_CTX *ctx, X509 *x)
{
    X509_STORE_CTX crl_ctx;
    int ret;


    if (ctx->parent)
        return 0;
    if (!X509_STORE_CTX_init(&crl_ctx, ctx->ctx, x, ctx->untrusted))
        return -1;

    crl_ctx.crls = ctx->crls;

    X509_STORE_CTX_set0_param(&crl_ctx, ctx->param);

    crl_ctx.parent = ctx;
    crl_ctx.verify_cb = ctx->verify_cb;


    ret = X509_verify_cert(&crl_ctx);
    if (ret <= 0)
        goto err;


    ret = check_crl_chain(ctx, ctx->chain, crl_ctx.chain);
 err:
    X509_STORE_CTX_cleanup(&crl_ctx);
    return ret;
}
