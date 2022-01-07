
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int EC_KEY ;
typedef int BIGNUM ;


 int * BN_bin2bn (int const*,int const,int *) ;
 int ERR_R_EVP_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_DigestFinal (int *,int const*,int *) ;
 int EVP_DigestInit (int *,int const*) ;
 int EVP_DigestUpdate (int *,int const*,int const) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_size (int const*) ;
 int OPENSSL_free (int const*) ;
 int const* OPENSSL_zalloc (int const) ;
 int SM2_F_SM2_COMPUTE_MSG_HASH ;
 int SM2_R_INVALID_DIGEST ;
 int SM2err (int ,int ) ;
 int sm2_compute_z_digest (int const*,int const*,int const*,size_t const,int const*) ;

__attribute__((used)) static BIGNUM *sm2_compute_msg_hash(const EVP_MD *digest,
                                    const EC_KEY *key,
                                    const uint8_t *id,
                                    const size_t id_len,
                                    const uint8_t *msg, size_t msg_len)
{
    EVP_MD_CTX *hash = EVP_MD_CTX_new();
    const int md_size = EVP_MD_size(digest);
    uint8_t *z = ((void*)0);
    BIGNUM *e = ((void*)0);

    if (md_size < 0) {
        SM2err(SM2_F_SM2_COMPUTE_MSG_HASH, SM2_R_INVALID_DIGEST);
        goto done;
    }

    z = OPENSSL_zalloc(md_size);
    if (hash == ((void*)0) || z == ((void*)0)) {
        SM2err(SM2_F_SM2_COMPUTE_MSG_HASH, ERR_R_MALLOC_FAILURE);
        goto done;
    }

    if (!sm2_compute_z_digest(z, digest, id, id_len, key)) {

        goto done;
    }

    if (!EVP_DigestInit(hash, digest)
            || !EVP_DigestUpdate(hash, z, md_size)
            || !EVP_DigestUpdate(hash, msg, msg_len)

            || !EVP_DigestFinal(hash, z, ((void*)0))) {
        SM2err(SM2_F_SM2_COMPUTE_MSG_HASH, ERR_R_EVP_LIB);
        goto done;
    }

    e = BN_bin2bn(z, md_size, ((void*)0));
    if (e == ((void*)0))
        SM2err(SM2_F_SM2_COMPUTE_MSG_HASH, ERR_R_INTERNAL_ERROR);

 done:
    OPENSSL_free(z);
    EVP_MD_CTX_free(hash);
    return e;
}
