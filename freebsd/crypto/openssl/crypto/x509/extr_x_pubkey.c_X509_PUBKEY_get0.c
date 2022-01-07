
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pkey; int * public_key; } ;
typedef TYPE_1__ X509_PUBKEY ;
typedef int EVP_PKEY ;


 int ERR_R_INTERNAL_ERROR ;
 int EVP_PKEY_free (int *) ;
 int X509_F_X509_PUBKEY_GET0 ;
 int X509err (int ,int ) ;
 int x509_pubkey_decode (int **,TYPE_1__*) ;

EVP_PKEY *X509_PUBKEY_get0(X509_PUBKEY *key)
{
    EVP_PKEY *ret = ((void*)0);

    if (key == ((void*)0) || key->public_key == ((void*)0))
        return ((void*)0);

    if (key->pkey != ((void*)0))
        return key->pkey;
    x509_pubkey_decode(&ret, key);

    if (ret != ((void*)0)) {
        X509err(X509_F_X509_PUBKEY_GET0, ERR_R_INTERNAL_ERROR);
        EVP_PKEY_free(ret);
    }

    return ((void*)0);
}
