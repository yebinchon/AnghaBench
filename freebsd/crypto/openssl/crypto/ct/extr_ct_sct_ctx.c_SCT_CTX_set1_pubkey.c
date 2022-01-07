
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_PUBKEY ;
struct TYPE_3__ {int * pkey; int pkeyhashlen; int pkeyhash; } ;
typedef TYPE_1__ SCT_CTX ;
typedef int EVP_PKEY ;


 int EVP_PKEY_free (int *) ;
 int * X509_PUBKEY_get (int *) ;
 int ct_public_key_hash (int *,int *,int *) ;

int SCT_CTX_set1_pubkey(SCT_CTX *sctx, X509_PUBKEY *pubkey)
{
    EVP_PKEY *pkey = X509_PUBKEY_get(pubkey);

    if (pkey == ((void*)0))
        return 0;

    if (!ct_public_key_hash(pubkey, &sctx->pkeyhash, &sctx->pkeyhashlen)) {
        EVP_PKEY_free(pkey);
        return 0;
    }

    EVP_PKEY_free(sctx->pkey);
    sctx->pkey = pkey;
    return 1;
}
