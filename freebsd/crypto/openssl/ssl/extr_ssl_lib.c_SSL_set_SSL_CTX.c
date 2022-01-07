
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int custext; } ;
struct TYPE_12__ {int sid_ctx_length; TYPE_1__* ctx; int sid_ctx; TYPE_3__* cert; TYPE_1__* session_ctx; } ;
struct TYPE_11__ {int sid_ctx_length; int sid_ctx; int cert; } ;
typedef TYPE_1__ SSL_CTX ;
typedef TYPE_2__ SSL ;
typedef TYPE_3__ CERT ;


 int SSL_CTX_free (TYPE_1__*) ;
 int SSL_CTX_up_ref (TYPE_1__*) ;
 int custom_exts_copy_flags (int *,int *) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memcpy (int *,int *,int) ;
 int ossl_assert (int) ;
 TYPE_3__* ssl_cert_dup (int ) ;
 int ssl_cert_free (TYPE_3__*) ;

SSL_CTX *SSL_set_SSL_CTX(SSL *ssl, SSL_CTX *ctx)
{
    CERT *new_cert;
    if (ssl->ctx == ctx)
        return ssl->ctx;
    if (ctx == ((void*)0))
        ctx = ssl->session_ctx;
    new_cert = ssl_cert_dup(ctx->cert);
    if (new_cert == ((void*)0)) {
        return ((void*)0);
    }

    if (!custom_exts_copy_flags(&new_cert->custext, &ssl->cert->custext)) {
        ssl_cert_free(new_cert);
        return ((void*)0);
    }

    ssl_cert_free(ssl->cert);
    ssl->cert = new_cert;





    if (!ossl_assert(ssl->sid_ctx_length <= sizeof(ssl->sid_ctx)))
        return ((void*)0);







    if ((ssl->ctx != ((void*)0)) &&
        (ssl->sid_ctx_length == ssl->ctx->sid_ctx_length) &&
        (memcmp(ssl->sid_ctx, ssl->ctx->sid_ctx, ssl->sid_ctx_length) == 0)) {
        ssl->sid_ctx_length = ctx->sid_ctx_length;
        memcpy(&ssl->sid_ctx, &ctx->sid_ctx, sizeof(ssl->sid_ctx));
    }

    SSL_CTX_up_ref(ctx);
    SSL_CTX_free(ssl->ctx);
    ssl->ctx = ctx;

    return ssl->ctx;
}
