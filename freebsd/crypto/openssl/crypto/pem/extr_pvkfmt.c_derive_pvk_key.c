
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,unsigned char const*,int) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_sha1 () ;

__attribute__((used)) static int derive_pvk_key(unsigned char *key,
                          const unsigned char *salt, unsigned int saltlen,
                          const unsigned char *pass, int passlen)
{
    EVP_MD_CTX *mctx = EVP_MD_CTX_new();
    int rv = 1;
    if (mctx == ((void*)0)
        || !EVP_DigestInit_ex(mctx, EVP_sha1(), ((void*)0))
        || !EVP_DigestUpdate(mctx, salt, saltlen)
        || !EVP_DigestUpdate(mctx, pass, passlen)
        || !EVP_DigestFinal_ex(mctx, key, ((void*)0)))
        rv = 0;

    EVP_MD_CTX_free(mctx);
    return rv;
}
