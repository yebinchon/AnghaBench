
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int prime_len; int subprime_len; int generator; int gentmp; int kdf_type; } ;
struct TYPE_5__ {int keygen_info_count; int keygen_info; TYPE_2__* data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef TYPE_2__ DH_PKEY_CTX ;


 int DH_F_PKEY_DH_INIT ;
 int DHerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_DH_KDF_NONE ;
 TYPE_2__* OPENSSL_zalloc (int) ;

__attribute__((used)) static int pkey_dh_init(EVP_PKEY_CTX *ctx)
{
    DH_PKEY_CTX *dctx;

    if ((dctx = OPENSSL_zalloc(sizeof(*dctx))) == ((void*)0)) {
        DHerr(DH_F_PKEY_DH_INIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    dctx->prime_len = 2048;
    dctx->subprime_len = -1;
    dctx->generator = 2;
    dctx->kdf_type = EVP_PKEY_DH_KDF_NONE;

    ctx->data = dctx;
    ctx->keygen_info = dctx->gentmp;
    ctx->keygen_info_count = 2;

    return 1;
}
