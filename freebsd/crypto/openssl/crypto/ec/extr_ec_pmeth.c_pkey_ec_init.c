
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cofactor_mode; int kdf_type; } ;
struct TYPE_5__ {TYPE_2__* data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef TYPE_2__ EC_PKEY_CTX ;


 int EC_F_PKEY_EC_INIT ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_ECDH_KDF_NONE ;
 TYPE_2__* OPENSSL_zalloc (int) ;

__attribute__((used)) static int pkey_ec_init(EVP_PKEY_CTX *ctx)
{
    EC_PKEY_CTX *dctx;

    if ((dctx = OPENSSL_zalloc(sizeof(*dctx))) == ((void*)0)) {
        ECerr(EC_F_PKEY_EC_INIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    dctx->cofactor_mode = -1;
    dctx->kdf_type = EVP_PKEY_ECDH_KDF_NONE;
    ctx->data = dctx;
    return 1;
}
