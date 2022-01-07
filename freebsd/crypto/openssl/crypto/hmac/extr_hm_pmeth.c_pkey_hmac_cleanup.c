
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; int data; } ;
struct TYPE_6__ {TYPE_1__ ktmp; int ctx; } ;
typedef TYPE_2__ HMAC_PKEY_CTX ;
typedef int EVP_PKEY_CTX ;


 TYPE_2__* EVP_PKEY_CTX_get_data (int *) ;
 int EVP_PKEY_CTX_set_data (int *,int *) ;
 int HMAC_CTX_free (int ) ;
 int OPENSSL_clear_free (int ,int ) ;
 int OPENSSL_free (TYPE_2__*) ;

__attribute__((used)) static void pkey_hmac_cleanup(EVP_PKEY_CTX *ctx)
{
    HMAC_PKEY_CTX *hctx = EVP_PKEY_CTX_get_data(ctx);

    if (hctx != ((void*)0)) {
        HMAC_CTX_free(hctx->ctx);
        OPENSSL_clear_free(hctx->ktmp.data, hctx->ktmp.length);
        OPENSSL_free(hctx);
        EVP_PKEY_CTX_set_data(ctx, ((void*)0));
    }
}
