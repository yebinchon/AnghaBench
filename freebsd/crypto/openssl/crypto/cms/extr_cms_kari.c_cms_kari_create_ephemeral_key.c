
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pctx; } ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef TYPE_1__ CMS_KeyAgreeRecipientInfo ;


 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 scalar_t__ EVP_PKEY_derive_init (int *) ;
 int EVP_PKEY_free (int *) ;
 scalar_t__ EVP_PKEY_keygen (int *,int **) ;
 scalar_t__ EVP_PKEY_keygen_init (int *) ;

__attribute__((used)) static int cms_kari_create_ephemeral_key(CMS_KeyAgreeRecipientInfo *kari,
                                         EVP_PKEY *pk)
{
    EVP_PKEY_CTX *pctx = ((void*)0);
    EVP_PKEY *ekey = ((void*)0);
    int rv = 0;
    pctx = EVP_PKEY_CTX_new(pk, ((void*)0));
    if (!pctx)
        goto err;
    if (EVP_PKEY_keygen_init(pctx) <= 0)
        goto err;
    if (EVP_PKEY_keygen(pctx, &ekey) <= 0)
        goto err;
    EVP_PKEY_CTX_free(pctx);
    pctx = EVP_PKEY_CTX_new(ekey, ((void*)0));
    if (!pctx)
        goto err;
    if (EVP_PKEY_derive_init(pctx) <= 0)
        goto err;
    kari->pctx = pctx;
    rv = 1;
 err:
    if (!rv)
        EVP_PKEY_CTX_free(pctx);
    EVP_PKEY_free(ekey);
    return rv;
}
