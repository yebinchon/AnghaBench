
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int OPENSSL_free (int *) ;

void EVP_MD_meth_free(EVP_MD *md)
{
    OPENSSL_free(md);
}
