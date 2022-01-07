
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_PUBKEY ;
typedef int EVP_PKEY ;


 int X509_PUBKEY_free (int *) ;
 int X509_PUBKEY_set (int **,int *) ;
 int i2d_X509_PUBKEY (int *,unsigned char**) ;

int i2d_PUBKEY(EVP_PKEY *a, unsigned char **pp)
{
    X509_PUBKEY *xpk = ((void*)0);
    int ret;
    if (!a)
        return 0;
    if (!X509_PUBKEY_set(&xpk, a))
        return -1;
    ret = i2d_X509_PUBKEY(xpk, pp);
    X509_PUBKEY_free(xpk);
    return ret;
}
