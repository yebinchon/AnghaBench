
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_PUBKEY ;
typedef int EVP_PKEY ;


 int EVP_PKEY_up_ref (int *) ;
 int * X509_PUBKEY_get0 (int *) ;

EVP_PKEY *X509_PUBKEY_get(X509_PUBKEY *key)
{
    EVP_PKEY *ret = X509_PUBKEY_get0(key);
    if (ret != ((void*)0))
        EVP_PKEY_up_ref(ret);
    return ret;
}
