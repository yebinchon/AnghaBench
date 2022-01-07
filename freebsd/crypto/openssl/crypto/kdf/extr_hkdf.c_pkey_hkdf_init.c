
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef int HKDF_PKEY_CTX ;
typedef TYPE_1__ EVP_PKEY_CTX ;


 int ERR_R_MALLOC_FAILURE ;
 int KDF_F_PKEY_HKDF_INIT ;
 int KDFerr (int ,int ) ;
 int * OPENSSL_zalloc (int) ;

__attribute__((used)) static int pkey_hkdf_init(EVP_PKEY_CTX *ctx)
{
    HKDF_PKEY_CTX *kctx;

    if ((kctx = OPENSSL_zalloc(sizeof(*kctx))) == ((void*)0)) {
        KDFerr(KDF_F_PKEY_HKDF_INIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    ctx->data = kctx;

    return 1;
}
