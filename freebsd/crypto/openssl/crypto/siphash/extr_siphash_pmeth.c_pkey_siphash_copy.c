
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; int ktmp; } ;
typedef TYPE_1__ SIPHASH_PKEY_CTX ;
typedef int SIPHASH ;
typedef int EVP_PKEY_CTX ;


 int ASN1_STRING_copy (int *,int *) ;
 int * ASN1_STRING_get0_data (int *) ;
 TYPE_1__* EVP_PKEY_CTX_get_data (int *) ;
 int memcpy (int *,int *,int) ;
 int pkey_siphash_cleanup (int *) ;
 int pkey_siphash_init (int *) ;

__attribute__((used)) static int pkey_siphash_copy(EVP_PKEY_CTX *dst, EVP_PKEY_CTX *src)
{
    SIPHASH_PKEY_CTX *sctx, *dctx;


    if (!pkey_siphash_init(dst))
        return 0;
    sctx = EVP_PKEY_CTX_get_data(src);
    dctx = EVP_PKEY_CTX_get_data(dst);
    if (ASN1_STRING_get0_data(&sctx->ktmp) != ((void*)0) &&
        !ASN1_STRING_copy(&dctx->ktmp, &sctx->ktmp)) {

        pkey_siphash_cleanup(dst);
        return 0;
    }
    memcpy(&dctx->ctx, &sctx->ctx, sizeof(SIPHASH));
    return 1;
}
