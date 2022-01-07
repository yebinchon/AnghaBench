
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; TYPE_2__* data; } ;
struct TYPE_6__ {TYPE_1__ ktmp; } ;
typedef TYPE_2__ POLY1305_PKEY_CTX ;
typedef int EVP_PKEY_CTX ;


 TYPE_2__* EVP_PKEY_CTX_get_data (int *) ;
 int EVP_PKEY_CTX_set_data (int *,int *) ;
 int OPENSSL_clear_free (TYPE_2__*,int) ;

__attribute__((used)) static void pkey_poly1305_cleanup(EVP_PKEY_CTX *ctx)
{
    POLY1305_PKEY_CTX *pctx = EVP_PKEY_CTX_get_data(ctx);

    if (pctx != ((void*)0)) {
        OPENSSL_clear_free(pctx->ktmp.data, pctx->ktmp.length);
        OPENSSL_clear_free(pctx, sizeof(*pctx));
        EVP_PKEY_CTX_set_data(ctx, ((void*)0));
    }
}
