
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 scalar_t__ EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int ssl_clear_hash_ctx (int **) ;

EVP_MD_CTX *ssl_replace_hash(EVP_MD_CTX **hash, const EVP_MD *md)
{
    ssl_clear_hash_ctx(hash);
    *hash = EVP_MD_CTX_new();
    if (*hash == ((void*)0) || (md && EVP_DigestInit_ex(*hash, md, ((void*)0)) <= 0)) {
        EVP_MD_CTX_free(*hash);
        *hash = ((void*)0);
        return ((void*)0);
    }
    return *hash;
}
