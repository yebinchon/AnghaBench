
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int derived_secret_label ;
typedef int SSL ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int ERR_R_INTERNAL_ERROR ;
 scalar_t__ EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 scalar_t__ EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_size (int const*) ;
 int EVP_PKEY_CTX_free (int *) ;
 scalar_t__ EVP_PKEY_CTX_hkdf_mode (int *,int ) ;
 int * EVP_PKEY_CTX_new_id (int ,int *) ;
 scalar_t__ EVP_PKEY_CTX_set1_hkdf_key (int *,unsigned char const*,size_t) ;
 scalar_t__ EVP_PKEY_CTX_set1_hkdf_salt (int *,unsigned char const*,size_t) ;
 scalar_t__ EVP_PKEY_CTX_set_hkdf_md (int *,int const*) ;
 int EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY ;
 int EVP_PKEY_HKDF ;
 scalar_t__ EVP_PKEY_derive (int *,unsigned char*,size_t*) ;
 scalar_t__ EVP_PKEY_derive_init (int *) ;
 int OPENSSL_cleanse (unsigned char*,size_t) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS13_GENERATE_SECRET ;
 int SSLfatal (int *,int ,int ,int ) ;
 unsigned char* default_zeros ;
 int ossl_assert (int) ;
 int tls13_hkdf_expand (int *,int const*,unsigned char const*,unsigned char*,int,unsigned char*,size_t,unsigned char*,size_t,int) ;

int tls13_generate_secret(SSL *s, const EVP_MD *md,
                          const unsigned char *prevsecret,
                          const unsigned char *insecret,
                          size_t insecretlen,
                          unsigned char *outsecret)
{
    size_t mdlen, prevsecretlen;
    int mdleni;
    int ret;
    EVP_PKEY_CTX *pctx = EVP_PKEY_CTX_new_id(EVP_PKEY_HKDF, ((void*)0));



    static const char derived_secret_label[] = "derived";

    unsigned char preextractsec[EVP_MAX_MD_SIZE];

    if (pctx == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    mdleni = EVP_MD_size(md);

    if (!ossl_assert(mdleni >= 0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    mdlen = (size_t)mdleni;

    if (insecret == ((void*)0)) {
        insecret = default_zeros;
        insecretlen = mdlen;
    }
    if (prevsecret == ((void*)0)) {
        prevsecret = default_zeros;
        prevsecretlen = 0;
    } else {
        EVP_MD_CTX *mctx = EVP_MD_CTX_new();
        unsigned char hash[EVP_MAX_MD_SIZE];


        if (mctx == ((void*)0)
                || EVP_DigestInit_ex(mctx, md, ((void*)0)) <= 0
                || EVP_DigestFinal_ex(mctx, hash, ((void*)0)) <= 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                     ERR_R_INTERNAL_ERROR);
            EVP_MD_CTX_free(mctx);
            EVP_PKEY_CTX_free(pctx);
            return 0;
        }
        EVP_MD_CTX_free(mctx);


        if (!tls13_hkdf_expand(s, md, prevsecret,
                               (unsigned char *)derived_secret_label,
                               sizeof(derived_secret_label) - 1, hash, mdlen,
                               preextractsec, mdlen, 1)) {

            EVP_PKEY_CTX_free(pctx);
            return 0;
        }

        prevsecret = preextractsec;
        prevsecretlen = mdlen;
    }

    ret = EVP_PKEY_derive_init(pctx) <= 0
            || EVP_PKEY_CTX_hkdf_mode(pctx, EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY)
               <= 0
            || EVP_PKEY_CTX_set_hkdf_md(pctx, md) <= 0
            || EVP_PKEY_CTX_set1_hkdf_key(pctx, insecret, insecretlen) <= 0
            || EVP_PKEY_CTX_set1_hkdf_salt(pctx, prevsecret, prevsecretlen)
               <= 0
            || EVP_PKEY_derive(pctx, outsecret, &mdlen)
               <= 0;

    if (ret != 0)
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                 ERR_R_INTERNAL_ERROR);

    EVP_PKEY_CTX_free(pctx);
    if (prevsecret == preextractsec)
        OPENSSL_cleanse(preextractsec, mdlen);
    return ret == 0;
}
