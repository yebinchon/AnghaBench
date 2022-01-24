#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_17__ {TYPE_5__* s3; TYPE_2__* session; } ;
struct TYPE_15__ {TYPE_3__* new_cipher; } ;
struct TYPE_16__ {TYPE_4__ tmp; } ;
struct TYPE_14__ {int algorithm_enc; } ;
struct TYPE_13__ {TYPE_1__* cipher; } ;
struct TYPE_12__ {int algorithm_enc; } ;
typedef  TYPE_6__ SSL ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 size_t EVP_CCM8_TLS_TAG_LEN ; 
 size_t EVP_CCM_TLS_IV_LEN ; 
 size_t EVP_CCM_TLS_TAG_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ EVP_CIPH_CCM_MODE ; 
 int /*<<< orphan*/  EVP_CTRL_AEAD_SET_IVLEN ; 
 int /*<<< orphan*/  EVP_CTRL_AEAD_SET_TAG ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *,int) ; 
 int EVP_MAX_KEY_LENGTH ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int SSL_AES128CCM8 ; 
 int SSL_AES256CCM8 ; 
 int /*<<< orphan*/  SSL_F_DERIVE_SECRET_KEY_AND_IV ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/  const*,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/  const*,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/  const*,unsigned char const*,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char*,size_t,int) ; 

__attribute__((used)) static int FUNC12(SSL *s, int sending, const EVP_MD *md,
                                    const EVP_CIPHER *ciph,
                                    const unsigned char *insecret,
                                    const unsigned char *hash,
                                    const unsigned char *label,
                                    size_t labellen, unsigned char *secret,
                                    unsigned char *iv, EVP_CIPHER_CTX *ciph_ctx)
{
    unsigned char key[EVP_MAX_KEY_LENGTH];
    size_t ivlen, keylen, taglen;
    int hashleni = FUNC5(md);
    size_t hashlen;

    /* Ensure cast to size_t is safe */
    if (!FUNC8(hashleni >= 0)) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_DERIVE_SECRET_KEY_AND_IV,
                 ERR_R_EVP_LIB);
        goto err;
    }
    hashlen = (size_t)hashleni;

    if (!FUNC11(s, md, insecret, label, labellen, hash, hashlen,
                           secret, hashlen, 1)) {
        /* SSLfatal() already called */
        goto err;
    }

    /* TODO(size_t): convert me */
    keylen = FUNC2(ciph);
    if (FUNC3(ciph) == EVP_CIPH_CCM_MODE) {
        uint32_t algenc;

        ivlen = EVP_CCM_TLS_IV_LEN;
        if (s->s3->tmp.new_cipher == NULL) {
            /* We've not selected a cipher yet - we must be doing early data */
            algenc = s->session->cipher->algorithm_enc;
        } else {
            algenc = s->s3->tmp.new_cipher->algorithm_enc;
        }
        if (algenc & (SSL_AES128CCM8 | SSL_AES256CCM8))
            taglen = EVP_CCM8_TLS_TAG_LEN;
         else
            taglen = EVP_CCM_TLS_TAG_LEN;
    } else {
        ivlen = FUNC1(ciph);
        taglen = 0;
    }

    if (!FUNC10(s, md, secret, key, keylen)
            || !FUNC9(s, md, secret, iv, ivlen)) {
        /* SSLfatal() already called */
        goto err;
    }

    if (FUNC4(ciph_ctx, ciph, NULL, NULL, NULL, sending) <= 0
        || !FUNC0(ciph_ctx, EVP_CTRL_AEAD_SET_IVLEN, ivlen, NULL)
        || (taglen != 0 && !FUNC0(ciph_ctx, EVP_CTRL_AEAD_SET_TAG,
                                                taglen, NULL))
        || FUNC4(ciph_ctx, NULL, NULL, key, NULL, -1) <= 0) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_DERIVE_SECRET_KEY_AND_IV,
                 ERR_R_EVP_LIB);
        goto err;
    }

    return 1;
 err:
    FUNC6(key, sizeof(key));
    return 0;
}