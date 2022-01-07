
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int (* verify_cb ) (int,TYPE_1__*) ;int error; int * current_cert; scalar_t__ error_depth; int chain; int * cert; TYPE_2__* dane; } ;
typedef TYPE_1__ X509_STORE_CTX ;
typedef int X509 ;
struct TYPE_13__ {scalar_t__ mdpth; int flags; } ;
typedef TYPE_2__ SSL_DANE ;


 int DANETLS_HAS_TA (TYPE_2__*) ;
 int DANE_FLAG_NO_DANE_EE_NAMECHECKS ;
 int X509_V_ERR_DANE_NO_MATCH ;
 int X509_V_ERR_OUT_OF_MEM ;
 int X509_get_pubkey_parameters (int *,int ) ;
 int check_id (TYPE_1__*) ;
 int check_leaf_suiteb (TYPE_1__*,int *) ;
 int dane_match (TYPE_1__*,int *,int ) ;
 int dane_reset (TYPE_2__*) ;
 int stub1 (int,TYPE_1__*) ;
 int verify_cb_cert (TYPE_1__*,int *,int ,int ) ;
 int verify_chain (TYPE_1__*) ;

__attribute__((used)) static int dane_verify(X509_STORE_CTX *ctx)
{
    X509 *cert = ctx->cert;
    SSL_DANE *dane = ctx->dane;
    int matched;
    int done;

    dane_reset(dane);
    matched = dane_match(ctx, ctx->cert, 0);
    done = matched != 0 || (!DANETLS_HAS_TA(dane) && dane->mdpth < 0);

    if (done)
        X509_get_pubkey_parameters(((void*)0), ctx->chain);

    if (matched > 0) {

        if (!check_leaf_suiteb(ctx, cert))
            return 0;

        if ((dane->flags & DANE_FLAG_NO_DANE_EE_NAMECHECKS) == 0 &&
            !check_id(ctx))
            return 0;

        ctx->error_depth = 0;
        ctx->current_cert = cert;
        return ctx->verify_cb(1, ctx);
    }

    if (matched < 0) {
        ctx->error_depth = 0;
        ctx->current_cert = cert;
        ctx->error = X509_V_ERR_OUT_OF_MEM;
        return -1;
    }

    if (done) {

        if (!check_leaf_suiteb(ctx, cert))
            return 0;
        return verify_cb_cert(ctx, cert, 0, X509_V_ERR_DANE_NO_MATCH);
    }





    return verify_chain(ctx);
}
