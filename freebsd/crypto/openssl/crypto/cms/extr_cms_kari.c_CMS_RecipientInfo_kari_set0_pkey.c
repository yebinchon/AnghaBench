
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * pctx; } ;
struct TYPE_5__ {TYPE_3__* kari; } ;
struct TYPE_6__ {TYPE_1__ d; } ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef TYPE_2__ CMS_RecipientInfo ;
typedef TYPE_3__ CMS_KeyAgreeRecipientInfo ;


 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 int EVP_PKEY_derive_init (int *) ;

int CMS_RecipientInfo_kari_set0_pkey(CMS_RecipientInfo *ri, EVP_PKEY *pk)
{
    EVP_PKEY_CTX *pctx;
    CMS_KeyAgreeRecipientInfo *kari = ri->d.kari;

    EVP_PKEY_CTX_free(kari->pctx);
    kari->pctx = ((void*)0);
    if (!pk)
        return 1;
    pctx = EVP_PKEY_CTX_new(pk, ((void*)0));
    if (!pctx || !EVP_PKEY_derive_init(pctx))
        goto err;
    kari->pctx = pctx;
    return 1;
 err:
    EVP_PKEY_CTX_free(pctx);
    return 0;
}
