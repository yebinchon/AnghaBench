
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int EVP_PKEY ;


 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_get1_RSA (int *) ;
 int RSA_free (int *) ;
 int * d2i_PUBKEY (int *,unsigned char const**,long) ;

RSA *d2i_RSA_PUBKEY(RSA **a, const unsigned char **pp, long length)
{
    EVP_PKEY *pkey;
    RSA *key;
    const unsigned char *q;
    q = *pp;
    pkey = d2i_PUBKEY(((void*)0), &q, length);
    if (!pkey)
        return ((void*)0);
    key = EVP_PKEY_get1_RSA(pkey);
    EVP_PKEY_free(pkey);
    if (!key)
        return ((void*)0);
    *pp = q;
    if (a) {
        RSA_free(*a);
        *a = key;
    }
    return key;
}
