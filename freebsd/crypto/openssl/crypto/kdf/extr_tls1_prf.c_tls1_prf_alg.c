
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ EVP_MD_type (int const*) ;
 int const* EVP_md5 () ;
 int const* EVP_sha1 () ;
 int KDF_F_TLS1_PRF_ALG ;
 int KDFerr (int ,int ) ;
 scalar_t__ NID_md5_sha1 ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int tls1_prf_P_hash (int const*,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char*,size_t) ;

__attribute__((used)) static int tls1_prf_alg(const EVP_MD *md,
                        const unsigned char *sec, size_t slen,
                        const unsigned char *seed, size_t seed_len,
                        unsigned char *out, size_t olen)
{

    if (EVP_MD_type(md) == NID_md5_sha1) {
        size_t i;
        unsigned char *tmp;
        if (!tls1_prf_P_hash(EVP_md5(), sec, slen/2 + (slen & 1),
                         seed, seed_len, out, olen))
            return 0;

        if ((tmp = OPENSSL_malloc(olen)) == ((void*)0)) {
            KDFerr(KDF_F_TLS1_PRF_ALG, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        if (!tls1_prf_P_hash(EVP_sha1(), sec + slen/2, slen/2 + (slen & 1),
                         seed, seed_len, tmp, olen)) {
            OPENSSL_clear_free(tmp, olen);
            return 0;
        }
        for (i = 0; i < olen; i++)
            out[i] ^= tmp[i];
        OPENSSL_clear_free(tmp, olen);
        return 1;
    }
    if (!tls1_prf_P_hash(md, sec, slen, seed, seed_len, out, olen))
        return 0;

    return 1;
}
