
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int mode; int info_len; int info; int key_len; int * key; int * md; int salt_len; int salt; } ;
typedef TYPE_1__ HKDF_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 size_t EVP_MD_size (int *) ;



 int * HKDF (int *,int ,int ,int *,int ,int ,int ,unsigned char*,size_t) ;
 int * HKDF_Expand (int *,int *,int ,int ,int ,unsigned char*,size_t) ;
 int * HKDF_Extract (int *,int ,int ,int *,int ,unsigned char*,size_t*) ;
 int KDF_F_PKEY_HKDF_DERIVE ;
 int KDF_R_MISSING_KEY ;
 int KDF_R_MISSING_MESSAGE_DIGEST ;
 int KDFerr (int ,int ) ;

__attribute__((used)) static int pkey_hkdf_derive(EVP_PKEY_CTX *ctx, unsigned char *key,
                            size_t *keylen)
{
    HKDF_PKEY_CTX *kctx = ctx->data;

    if (kctx->md == ((void*)0)) {
        KDFerr(KDF_F_PKEY_HKDF_DERIVE, KDF_R_MISSING_MESSAGE_DIGEST);
        return 0;
    }
    if (kctx->key == ((void*)0)) {
        KDFerr(KDF_F_PKEY_HKDF_DERIVE, KDF_R_MISSING_KEY);
        return 0;
    }

    switch (kctx->mode) {
    case 129:
        return HKDF(kctx->md, kctx->salt, kctx->salt_len, kctx->key,
                    kctx->key_len, kctx->info, kctx->info_len, key,
                    *keylen) != ((void*)0);

    case 128:
        if (key == ((void*)0)) {
            *keylen = EVP_MD_size(kctx->md);
            return 1;
        }
        return HKDF_Extract(kctx->md, kctx->salt, kctx->salt_len, kctx->key,
                            kctx->key_len, key, keylen) != ((void*)0);

    case 130:
        return HKDF_Expand(kctx->md, kctx->key, kctx->key_len, kctx->info,
                           kctx->info_len, key, *keylen) != ((void*)0);

    default:
        return 0;
    }
}
