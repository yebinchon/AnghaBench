
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_MD ;


 int ERR_R_INTERNAL_ERROR ;
 scalar_t__ EVP_PKEY_CTX_add1_tls1_prf_seed (int *,void const*,int) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new_id (int ,int *) ;
 scalar_t__ EVP_PKEY_CTX_set1_tls1_prf_secret (int *,unsigned char const*,int) ;
 scalar_t__ EVP_PKEY_CTX_set_tls1_prf_md (int *,int const*) ;
 int EVP_PKEY_TLS1_PRF ;
 scalar_t__ EVP_PKEY_derive (int *,unsigned char*,size_t*) ;
 scalar_t__ EVP_PKEY_derive_init (int *) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS1_PRF ;
 int SSLerr (int ,int ) ;
 int SSLfatal (int *,int ,int ,int ) ;
 int * ssl_prf_md (int *) ;

__attribute__((used)) static int tls1_PRF(SSL *s,
                    const void *seed1, size_t seed1_len,
                    const void *seed2, size_t seed2_len,
                    const void *seed3, size_t seed3_len,
                    const void *seed4, size_t seed4_len,
                    const void *seed5, size_t seed5_len,
                    const unsigned char *sec, size_t slen,
                    unsigned char *out, size_t olen, int fatal)
{
    const EVP_MD *md = ssl_prf_md(s);
    EVP_PKEY_CTX *pctx = ((void*)0);
    int ret = 0;

    if (md == ((void*)0)) {

        if (fatal)
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_PRF,
                     ERR_R_INTERNAL_ERROR);
        else
            SSLerr(SSL_F_TLS1_PRF, ERR_R_INTERNAL_ERROR);
        return 0;
    }
    pctx = EVP_PKEY_CTX_new_id(EVP_PKEY_TLS1_PRF, ((void*)0));
    if (pctx == ((void*)0) || EVP_PKEY_derive_init(pctx) <= 0
        || EVP_PKEY_CTX_set_tls1_prf_md(pctx, md) <= 0
        || EVP_PKEY_CTX_set1_tls1_prf_secret(pctx, sec, (int)slen) <= 0
        || EVP_PKEY_CTX_add1_tls1_prf_seed(pctx, seed1, (int)seed1_len) <= 0
        || EVP_PKEY_CTX_add1_tls1_prf_seed(pctx, seed2, (int)seed2_len) <= 0
        || EVP_PKEY_CTX_add1_tls1_prf_seed(pctx, seed3, (int)seed3_len) <= 0
        || EVP_PKEY_CTX_add1_tls1_prf_seed(pctx, seed4, (int)seed4_len) <= 0
        || EVP_PKEY_CTX_add1_tls1_prf_seed(pctx, seed5, (int)seed5_len) <= 0
        || EVP_PKEY_derive(pctx, out, &olen) <= 0) {
        if (fatal)
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_PRF,
                     ERR_R_INTERNAL_ERROR);
        else
            SSLerr(SSL_F_TLS1_PRF, ERR_R_INTERNAL_ERROR);
        goto err;
    }

    ret = 1;

 err:
    EVP_PKEY_CTX_free(pctx);
    return ret;
}
