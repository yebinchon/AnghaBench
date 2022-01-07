
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctr ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 size_t ECDH_KDF_MAX ;
 int EVP_DigestFinal (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,unsigned char const*,size_t) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 size_t EVP_MD_size (int const*) ;
 int OPENSSL_cleanse (unsigned char*,size_t) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

int ecdh_KDF_X9_63(unsigned char *out, size_t outlen,
                   const unsigned char *Z, size_t Zlen,
                   const unsigned char *sinfo, size_t sinfolen,
                   const EVP_MD *md)
{
    EVP_MD_CTX *mctx = ((void*)0);
    int rv = 0;
    unsigned int i;
    size_t mdlen;
    unsigned char ctr[4];
    if (sinfolen > ECDH_KDF_MAX || outlen > ECDH_KDF_MAX
        || Zlen > ECDH_KDF_MAX)
        return 0;
    mctx = EVP_MD_CTX_new();
    if (mctx == ((void*)0))
        return 0;
    mdlen = EVP_MD_size(md);
    for (i = 1;; i++) {
        unsigned char mtmp[EVP_MAX_MD_SIZE];
        if (!EVP_DigestInit_ex(mctx, md, ((void*)0)))
            goto err;
        ctr[3] = i & 0xFF;
        ctr[2] = (i >> 8) & 0xFF;
        ctr[1] = (i >> 16) & 0xFF;
        ctr[0] = (i >> 24) & 0xFF;
        if (!EVP_DigestUpdate(mctx, Z, Zlen))
            goto err;
        if (!EVP_DigestUpdate(mctx, ctr, sizeof(ctr)))
            goto err;
        if (!EVP_DigestUpdate(mctx, sinfo, sinfolen))
            goto err;
        if (outlen >= mdlen) {
            if (!EVP_DigestFinal(mctx, out, ((void*)0)))
                goto err;
            outlen -= mdlen;
            if (outlen == 0)
                break;
            out += mdlen;
        } else {
            if (!EVP_DigestFinal(mctx, mtmp, ((void*)0)))
                goto err;
            memcpy(out, mtmp, outlen);
            OPENSSL_cleanse(mtmp, mdlen);
            break;
        }
    }
    rv = 1;
 err:
    EVP_MD_CTX_free(mctx);
    return rv;
}
