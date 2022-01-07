
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int ASN1_OBJECT ;


 size_t DH_KDF_MAX ;
 int EVP_DigestFinal (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,unsigned char const*,int) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 size_t EVP_MD_size (int const*) ;
 int OPENSSL_cleanse (unsigned char*,size_t) ;
 int OPENSSL_free (unsigned char*) ;
 int dh_sharedinfo_encode (unsigned char**,unsigned char**,int *,size_t,unsigned char const*,size_t) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

int DH_KDF_X9_42(unsigned char *out, size_t outlen,
                 const unsigned char *Z, size_t Zlen,
                 ASN1_OBJECT *key_oid,
                 const unsigned char *ukm, size_t ukmlen, const EVP_MD *md)
{
    EVP_MD_CTX *mctx = ((void*)0);
    int rv = 0;
    unsigned int i;
    size_t mdlen;
    unsigned char *der = ((void*)0), *ctr;
    int derlen;
    if (Zlen > DH_KDF_MAX)
        return 0;
    mctx = EVP_MD_CTX_new();
    if (mctx == ((void*)0))
        return 0;
    mdlen = EVP_MD_size(md);
    derlen = dh_sharedinfo_encode(&der, &ctr, key_oid, outlen, ukm, ukmlen);
    if (derlen == 0)
        goto err;
    for (i = 1;; i++) {
        unsigned char mtmp[EVP_MAX_MD_SIZE];
        if (!EVP_DigestInit_ex(mctx, md, ((void*)0))
            || !EVP_DigestUpdate(mctx, Z, Zlen))
            goto err;
        ctr[3] = i & 0xFF;
        ctr[2] = (i >> 8) & 0xFF;
        ctr[1] = (i >> 16) & 0xFF;
        ctr[0] = (i >> 24) & 0xFF;
        if (!EVP_DigestUpdate(mctx, der, derlen))
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
    OPENSSL_free(der);
    EVP_MD_CTX_free(mctx);
    return rv;
}
