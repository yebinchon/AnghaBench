
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int engine; int pctx; TYPE_1__* digest; scalar_t__ md_data; } ;
struct TYPE_7__ {scalar_t__ ctx_size; int (* cleanup ) (TYPE_2__*) ;} ;
typedef TYPE_2__ EVP_MD_CTX ;


 int ENGINE_finish (int ) ;
 int EVP_MD_CTX_FLAG_CLEANED ;
 int EVP_MD_CTX_FLAG_KEEP_PKEY_CTX ;
 int EVP_MD_CTX_FLAG_REUSE ;
 int EVP_MD_CTX_test_flags (TYPE_2__*,int ) ;
 int EVP_PKEY_CTX_free (int ) ;
 int OPENSSL_cleanse (TYPE_2__*,int) ;
 int OPENSSL_clear_free (scalar_t__,scalar_t__) ;
 int stub1 (TYPE_2__*) ;

int EVP_MD_CTX_reset(EVP_MD_CTX *ctx)
{
    if (ctx == ((void*)0))
        return 1;





    if (ctx->digest && ctx->digest->cleanup
        && !EVP_MD_CTX_test_flags(ctx, EVP_MD_CTX_FLAG_CLEANED))
        ctx->digest->cleanup(ctx);
    if (ctx->digest && ctx->digest->ctx_size && ctx->md_data
        && !EVP_MD_CTX_test_flags(ctx, EVP_MD_CTX_FLAG_REUSE)) {
        OPENSSL_clear_free(ctx->md_data, ctx->digest->ctx_size);
    }




    if (!EVP_MD_CTX_test_flags(ctx, EVP_MD_CTX_FLAG_KEEP_PKEY_CTX))
        EVP_PKEY_CTX_free(ctx->pctx);

    ENGINE_finish(ctx->engine);

    OPENSSL_cleanse(ctx, sizeof(*ctx));

    return 1;
}
