
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int EVP_MD_CTX_free (int *) ;

void ssl_clear_hash_ctx(EVP_MD_CTX **hash)
{

    EVP_MD_CTX_free(*hash);
    *hash = ((void*)0);
}
