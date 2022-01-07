
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int maxmem_bytes; int p; int r; int N; int salt_len; int * salt; int pass_len; int * pass; } ;
typedef TYPE_1__ SCRYPT_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int EVP_PBE_scrypt (char*,int ,int *,int ,int ,int ,int ,int ,unsigned char*,size_t) ;
 int KDF_F_PKEY_SCRYPT_DERIVE ;
 int KDF_R_MISSING_PASS ;
 int KDF_R_MISSING_SALT ;
 int KDFerr (int ,int ) ;

__attribute__((used)) static int pkey_scrypt_derive(EVP_PKEY_CTX *ctx, unsigned char *key,
                              size_t *keylen)
{
    SCRYPT_PKEY_CTX *kctx = ctx->data;

    if (kctx->pass == ((void*)0)) {
        KDFerr(KDF_F_PKEY_SCRYPT_DERIVE, KDF_R_MISSING_PASS);
        return 0;
    }

    if (kctx->salt == ((void*)0)) {
        KDFerr(KDF_F_PKEY_SCRYPT_DERIVE, KDF_R_MISSING_SALT);
        return 0;
    }

    return EVP_PBE_scrypt((char *)kctx->pass, kctx->pass_len, kctx->salt,
                          kctx->salt_len, kctx->N, kctx->r, kctx->p,
                          kctx->maxmem_bytes, key, *keylen);
}
