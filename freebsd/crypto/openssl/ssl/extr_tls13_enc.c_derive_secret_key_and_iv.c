
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
typedef int key ;
struct TYPE_17__ {TYPE_5__* s3; TYPE_2__* session; } ;
struct TYPE_15__ {TYPE_3__* new_cipher; } ;
struct TYPE_16__ {TYPE_4__ tmp; } ;
struct TYPE_14__ {int algorithm_enc; } ;
struct TYPE_13__ {TYPE_1__* cipher; } ;
struct TYPE_12__ {int algorithm_enc; } ;
typedef TYPE_6__ SSL ;
typedef int EVP_MD ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;


 int ERR_R_EVP_LIB ;
 size_t EVP_CCM8_TLS_TAG_LEN ;
 size_t EVP_CCM_TLS_IV_LEN ;
 size_t EVP_CCM_TLS_TAG_LEN ;
 int EVP_CIPHER_CTX_ctrl (int *,int ,size_t,int *) ;
 size_t EVP_CIPHER_iv_length (int const*) ;
 size_t EVP_CIPHER_key_length (int const*) ;
 scalar_t__ EVP_CIPHER_mode (int const*) ;
 scalar_t__ EVP_CIPH_CCM_MODE ;
 int EVP_CTRL_AEAD_SET_IVLEN ;
 int EVP_CTRL_AEAD_SET_TAG ;
 scalar_t__ EVP_CipherInit_ex (int *,int const*,int *,unsigned char*,int *,int) ;
 int EVP_MAX_KEY_LENGTH ;
 int EVP_MD_size (int const*) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AES128CCM8 ;
 int SSL_AES256CCM8 ;
 int SSL_F_DERIVE_SECRET_KEY_AND_IV ;
 int SSLfatal (TYPE_6__*,int ,int ,int ) ;
 int ossl_assert (int) ;
 int tls13_derive_iv (TYPE_6__*,int const*,unsigned char*,unsigned char*,size_t) ;
 int tls13_derive_key (TYPE_6__*,int const*,unsigned char*,unsigned char*,size_t) ;
 int tls13_hkdf_expand (TYPE_6__*,int const*,unsigned char const*,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char*,size_t,int) ;

__attribute__((used)) static int derive_secret_key_and_iv(SSL *s, int sending, const EVP_MD *md,
                                    const EVP_CIPHER *ciph,
                                    const unsigned char *insecret,
                                    const unsigned char *hash,
                                    const unsigned char *label,
                                    size_t labellen, unsigned char *secret,
                                    unsigned char *iv, EVP_CIPHER_CTX *ciph_ctx)
{
    unsigned char key[EVP_MAX_KEY_LENGTH];
    size_t ivlen, keylen, taglen;
    int hashleni = EVP_MD_size(md);
    size_t hashlen;


    if (!ossl_assert(hashleni >= 0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DERIVE_SECRET_KEY_AND_IV,
                 ERR_R_EVP_LIB);
        goto err;
    }
    hashlen = (size_t)hashleni;

    if (!tls13_hkdf_expand(s, md, insecret, label, labellen, hash, hashlen,
                           secret, hashlen, 1)) {

        goto err;
    }


    keylen = EVP_CIPHER_key_length(ciph);
    if (EVP_CIPHER_mode(ciph) == EVP_CIPH_CCM_MODE) {
        uint32_t algenc;

        ivlen = EVP_CCM_TLS_IV_LEN;
        if (s->s3->tmp.new_cipher == ((void*)0)) {

            algenc = s->session->cipher->algorithm_enc;
        } else {
            algenc = s->s3->tmp.new_cipher->algorithm_enc;
        }
        if (algenc & (SSL_AES128CCM8 | SSL_AES256CCM8))
            taglen = EVP_CCM8_TLS_TAG_LEN;
         else
            taglen = EVP_CCM_TLS_TAG_LEN;
    } else {
        ivlen = EVP_CIPHER_iv_length(ciph);
        taglen = 0;
    }

    if (!tls13_derive_key(s, md, secret, key, keylen)
            || !tls13_derive_iv(s, md, secret, iv, ivlen)) {

        goto err;
    }

    if (EVP_CipherInit_ex(ciph_ctx, ciph, ((void*)0), ((void*)0), ((void*)0), sending) <= 0
        || !EVP_CIPHER_CTX_ctrl(ciph_ctx, EVP_CTRL_AEAD_SET_IVLEN, ivlen, ((void*)0))
        || (taglen != 0 && !EVP_CIPHER_CTX_ctrl(ciph_ctx, EVP_CTRL_AEAD_SET_TAG,
                                                taglen, ((void*)0)))
        || EVP_CipherInit_ex(ciph_ctx, ((void*)0), ((void*)0), key, ((void*)0), -1) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DERIVE_SECRET_KEY_AND_IV,
                 ERR_R_EVP_LIB);
        goto err;
    }

    return 1;
 err:
    OPENSSL_cleanse(key, sizeof(key));
    return 0;
}
