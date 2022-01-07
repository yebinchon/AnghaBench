
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int N; int r; int p; int maxmem_bytes; } ;
typedef TYPE_1__ SCRYPT_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int ERR_R_MALLOC_FAILURE ;
 int KDF_F_PKEY_SCRYPT_INIT ;
 int KDFerr (int ,int ) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

__attribute__((used)) static int pkey_scrypt_init(EVP_PKEY_CTX *ctx)
{
    SCRYPT_PKEY_CTX *kctx;

    kctx = OPENSSL_zalloc(sizeof(*kctx));
    if (kctx == ((void*)0)) {
        KDFerr(KDF_F_PKEY_SCRYPT_INIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }





    kctx->N = 1 << 20;
    kctx->r = 8;
    kctx->p = 1;
    kctx->maxmem_bytes = 1025 * 1024 * 1024;

    ctx->data = kctx;

    return 1;
}
