
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ktmp; } ;
typedef TYPE_1__ SIPHASH_PKEY_CTX ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int ASN1_OCTET_STRING ;


 int * ASN1_OCTET_STRING_dup (int *) ;
 int * ASN1_STRING_get0_data (int *) ;
 TYPE_1__* EVP_PKEY_CTX_get_data (int *) ;
 int EVP_PKEY_assign_SIPHASH (int *,int *) ;

__attribute__((used)) static int pkey_siphash_keygen(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey)
{
    ASN1_OCTET_STRING *key;
    SIPHASH_PKEY_CTX *pctx = EVP_PKEY_CTX_get_data(ctx);

    if (ASN1_STRING_get0_data(&pctx->ktmp) == ((void*)0))
        return 0;
    key = ASN1_OCTET_STRING_dup(&pctx->ktmp);
    if (key == ((void*)0))
        return 0;
    return EVP_PKEY_assign_SIPHASH(pkey, key);
}
