#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 unsigned int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int NID_md5_sha1 ; 
 int NID_mdc2 ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,size_t) ; 
 unsigned char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  RSA_F_INT_RSA_VERIFY ; 
 int /*<<< orphan*/  RSA_PKCS1_PADDING ; 
 int /*<<< orphan*/  RSA_R_BAD_SIGNATURE ; 
 int /*<<< orphan*/  RSA_R_INVALID_DIGEST_LENGTH ; 
 int /*<<< orphan*/  RSA_R_INVALID_MESSAGE_LENGTH ; 
 int /*<<< orphan*/  RSA_R_UNKNOWN_ALGORITHM_TYPE ; 
 int /*<<< orphan*/  RSA_R_WRONG_SIGNATURE_LENGTH ; 
 int FUNC4 (int,unsigned char const*,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SSL_SIG_LENGTH ; 
 int /*<<< orphan*/  FUNC7 (unsigned char**,int*,int,unsigned char const*,unsigned int) ; 
 scalar_t__ FUNC8 (unsigned char const*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char const*,unsigned int) ; 

int FUNC10(int type, const unsigned char *m, unsigned int m_len,
                   unsigned char *rm, size_t *prm_len,
                   const unsigned char *sigbuf, size_t siglen, RSA *rsa)
{
    int decrypt_len, ret = 0, encoded_len = 0;
    unsigned char *decrypt_buf = NULL, *encoded = NULL;

    if (siglen != (size_t)FUNC5(rsa)) {
        FUNC6(RSA_F_INT_RSA_VERIFY, RSA_R_WRONG_SIGNATURE_LENGTH);
        return 0;
    }

    /* Recover the encoded digest. */
    decrypt_buf = FUNC3(siglen);
    if (decrypt_buf == NULL) {
        FUNC6(RSA_F_INT_RSA_VERIFY, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    decrypt_len = FUNC4((int)siglen, sigbuf, decrypt_buf, rsa,
                                     RSA_PKCS1_PADDING);
    if (decrypt_len <= 0)
        goto err;

    if (type == NID_md5_sha1) {
        /*
         * NID_md5_sha1 corresponds to the MD5/SHA1 combination in TLS 1.1 and
         * earlier. It has no DigestInfo wrapper but otherwise is
         * RSASSA-PKCS1-v1_5.
         */
        if (decrypt_len != SSL_SIG_LENGTH) {
            FUNC6(RSA_F_INT_RSA_VERIFY, RSA_R_BAD_SIGNATURE);
            goto err;
        }

        if (rm != NULL) {
            FUNC9(rm, decrypt_buf, SSL_SIG_LENGTH);
            *prm_len = SSL_SIG_LENGTH;
        } else {
            if (m_len != SSL_SIG_LENGTH) {
                FUNC6(RSA_F_INT_RSA_VERIFY, RSA_R_INVALID_MESSAGE_LENGTH);
                goto err;
            }

            if (FUNC8(decrypt_buf, m, SSL_SIG_LENGTH) != 0) {
                FUNC6(RSA_F_INT_RSA_VERIFY, RSA_R_BAD_SIGNATURE);
                goto err;
            }
        }
    } else if (type == NID_mdc2 && decrypt_len == 2 + 16
               && decrypt_buf[0] == 0x04 && decrypt_buf[1] == 0x10) {
        /*
         * Oddball MDC2 case: signature can be OCTET STRING. check for correct
         * tag and length octets.
         */
        if (rm != NULL) {
            FUNC9(rm, decrypt_buf + 2, 16);
            *prm_len = 16;
        } else {
            if (m_len != 16) {
                FUNC6(RSA_F_INT_RSA_VERIFY, RSA_R_INVALID_MESSAGE_LENGTH);
                goto err;
            }

            if (FUNC8(m, decrypt_buf + 2, 16) != 0) {
                FUNC6(RSA_F_INT_RSA_VERIFY, RSA_R_BAD_SIGNATURE);
                goto err;
            }
        }
    } else {
        /*
         * If recovering the digest, extract a digest-sized output from the end
         * of |decrypt_buf| for |encode_pkcs1|, then compare the decryption
         * output as in a standard verification.
         */
        if (rm != NULL) {
            const EVP_MD *md = FUNC1(type);
            if (md == NULL) {
                FUNC6(RSA_F_INT_RSA_VERIFY, RSA_R_UNKNOWN_ALGORITHM_TYPE);
                goto err;
            }

            m_len = FUNC0(md);
            if (m_len > (size_t)decrypt_len) {
                FUNC6(RSA_F_INT_RSA_VERIFY, RSA_R_INVALID_DIGEST_LENGTH);
                goto err;
            }
            m = decrypt_buf + decrypt_len - m_len;
        }

        /* Construct the encoded digest and ensure it matches. */
        if (!FUNC7(&encoded, &encoded_len, type, m, m_len))
            goto err;

        if (encoded_len != decrypt_len
            || FUNC8(encoded, decrypt_buf, encoded_len) != 0) {
            FUNC6(RSA_F_INT_RSA_VERIFY, RSA_R_BAD_SIGNATURE);
            goto err;
        }

        /* Output the recovered digest. */
        if (rm != NULL) {
            FUNC9(rm, m, m_len);
            *prm_len = m_len;
        }
    }

    ret = 1;

err:
    FUNC2(encoded, (size_t)encoded_len);
    FUNC2(decrypt_buf, siglen);
    return ret;
}