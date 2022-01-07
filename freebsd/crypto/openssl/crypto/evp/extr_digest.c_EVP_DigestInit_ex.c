
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ type; int (* init ) (TYPE_1__*) ;scalar_t__ ctx_size; int update; } ;
struct TYPE_9__ {int flags; TYPE_2__ const* digest; scalar_t__ pctx; int * md_data; int update; int * engine; } ;
typedef TYPE_1__ EVP_MD_CTX ;
typedef TYPE_2__ const EVP_MD ;
typedef int ENGINE ;


 int ENGINE_finish (int *) ;
 TYPE_2__ const* ENGINE_get_digest (int *,scalar_t__) ;
 int * ENGINE_get_digest_engine (scalar_t__) ;
 int ENGINE_init (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_EVP_DIGESTINIT_EX ;
 int EVP_MD_CTX_FLAG_CLEANED ;
 int EVP_MD_CTX_FLAG_NO_INIT ;
 int EVP_MD_CTX_clear_flags (TYPE_1__*,int ) ;
 int EVP_PKEY_CTRL_DIGESTINIT ;
 int EVP_PKEY_CTX_ctrl (scalar_t__,int,int ,int ,int ,TYPE_1__*) ;
 int EVP_PKEY_OP_TYPE_SIG ;
 int EVP_R_INITIALIZATION_ERROR ;
 int EVP_R_NO_DIGEST_SET ;
 int EVPerr (int ,int ) ;
 int OPENSSL_clear_free (int *,scalar_t__) ;
 int * OPENSSL_zalloc (scalar_t__) ;
 int stub1 (TYPE_1__*) ;

int EVP_DigestInit_ex(EVP_MD_CTX *ctx, const EVP_MD *type, ENGINE *impl)
{
    EVP_MD_CTX_clear_flags(ctx, EVP_MD_CTX_FLAG_CLEANED);







    if (ctx->engine && ctx->digest &&
        (type == ((void*)0) || (type->type == ctx->digest->type)))
        goto skip_to_init;
    if (type) {





        ENGINE_finish(ctx->engine);
        if (impl != ((void*)0)) {
            if (!ENGINE_init(impl)) {
                EVPerr(EVP_F_EVP_DIGESTINIT_EX, EVP_R_INITIALIZATION_ERROR);
                return 0;
            }
        } else {

            impl = ENGINE_get_digest_engine(type->type);
        }
        if (impl != ((void*)0)) {

            const EVP_MD *d = ENGINE_get_digest(impl, type->type);

            if (d == ((void*)0)) {
                EVPerr(EVP_F_EVP_DIGESTINIT_EX, EVP_R_INITIALIZATION_ERROR);
                ENGINE_finish(impl);
                return 0;
            }

            type = d;




            ctx->engine = impl;
        } else
            ctx->engine = ((void*)0);
    } else {
        if (!ctx->digest) {
            EVPerr(EVP_F_EVP_DIGESTINIT_EX, EVP_R_NO_DIGEST_SET);
            return 0;
        }
        type = ctx->digest;
    }

    if (ctx->digest != type) {
        if (ctx->digest && ctx->digest->ctx_size) {
            OPENSSL_clear_free(ctx->md_data, ctx->digest->ctx_size);
            ctx->md_data = ((void*)0);
        }
        ctx->digest = type;
        if (!(ctx->flags & EVP_MD_CTX_FLAG_NO_INIT) && type->ctx_size) {
            ctx->update = type->update;
            ctx->md_data = OPENSSL_zalloc(type->ctx_size);
            if (ctx->md_data == ((void*)0)) {
                EVPerr(EVP_F_EVP_DIGESTINIT_EX, ERR_R_MALLOC_FAILURE);
                return 0;
            }
        }
    }

 skip_to_init:

    if (ctx->pctx) {
        int r;
        r = EVP_PKEY_CTX_ctrl(ctx->pctx, -1, EVP_PKEY_OP_TYPE_SIG,
                              EVP_PKEY_CTRL_DIGESTINIT, 0, ctx);
        if (r <= 0 && (r != -2))
            return 0;
    }
    if (ctx->flags & EVP_MD_CTX_FLAG_NO_INIT)
        return 1;
    return ctx->digest->init(ctx);
}
