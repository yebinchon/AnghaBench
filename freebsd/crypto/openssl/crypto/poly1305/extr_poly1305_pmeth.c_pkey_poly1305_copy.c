
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; int ktmp; } ;
typedef TYPE_1__ POLY1305_PKEY_CTX ;
typedef int POLY1305 ;
typedef int EVP_PKEY_CTX ;


 int ASN1_STRING_copy (int *,int *) ;
 int * ASN1_STRING_get0_data (int *) ;
 TYPE_1__* EVP_PKEY_CTX_get_data (int *) ;
 int memcpy (int *,int *,int) ;
 int pkey_poly1305_cleanup (int *) ;
 int pkey_poly1305_init (int *) ;

__attribute__((used)) static int pkey_poly1305_copy(EVP_PKEY_CTX *dst, EVP_PKEY_CTX *src)
{
    POLY1305_PKEY_CTX *sctx, *dctx;


    if (!pkey_poly1305_init(dst))
        return 0;
    sctx = EVP_PKEY_CTX_get_data(src);
    dctx = EVP_PKEY_CTX_get_data(dst);
    if (ASN1_STRING_get0_data(&sctx->ktmp) != ((void*)0) &&
        !ASN1_STRING_copy(&dctx->ktmp, &sctx->ktmp)) {

        pkey_poly1305_cleanup(dst);
        return 0;
    }
    memcpy(&dctx->ctx, &sctx->ctx, sizeof(POLY1305));
    return 1;
}
