
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 int EVP_PKEY_print_private (int *,int *,int,int *) ;
 int EVP_PKEY_set1_RSA (int *,int *) ;

int RSA_print(BIO *bp, const RSA *x, int off)
{
    EVP_PKEY *pk;
    int ret;
    pk = EVP_PKEY_new();
    if (pk == ((void*)0) || !EVP_PKEY_set1_RSA(pk, (RSA *)x))
        return 0;
    ret = EVP_PKEY_print_private(bp, pk, off, ((void*)0));
    EVP_PKEY_free(pk);
    return ret;
}
