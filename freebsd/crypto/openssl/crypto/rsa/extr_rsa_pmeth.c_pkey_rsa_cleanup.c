
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {struct TYPE_5__* oaep_label; struct TYPE_5__* tbuf; int pub_exp; } ;
typedef TYPE_1__ RSA_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int BN_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void pkey_rsa_cleanup(EVP_PKEY_CTX *ctx)
{
    RSA_PKEY_CTX *rctx = ctx->data;
    if (rctx) {
        BN_free(rctx->pub_exp);
        OPENSSL_free(rctx->tbuf);
        OPENSSL_free(rctx->oaep_label);
        OPENSSL_free(rctx);
    }
}
