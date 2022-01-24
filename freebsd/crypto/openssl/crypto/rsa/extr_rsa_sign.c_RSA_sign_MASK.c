#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* meth; } ;
struct TYPE_7__ {int (* rsa_sign ) (int,unsigned char const*,unsigned int,unsigned char*,unsigned int*,TYPE_2__*) ;} ;
typedef  TYPE_2__ RSA ;

/* Variables and functions */
 int NID_md5_sha1 ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  RSA_F_RSA_SIGN ; 
 int /*<<< orphan*/  RSA_PKCS1_PADDING ; 
 int RSA_PKCS1_PADDING_SIZE ; 
 int /*<<< orphan*/  RSA_R_DIGEST_TOO_BIG_FOR_RSA_KEY ; 
 int /*<<< orphan*/  RSA_R_INVALID_MESSAGE_LENGTH ; 
 int FUNC1 (int,unsigned char const*,unsigned char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int SSL_SIG_LENGTH ; 
 int /*<<< orphan*/  FUNC4 (unsigned char**,int*,int,unsigned char const*,unsigned int) ; 
 int FUNC5 (int,unsigned char const*,unsigned int,unsigned char*,unsigned int*,TYPE_2__*) ; 

int FUNC6(int type, const unsigned char *m, unsigned int m_len,
             unsigned char *sigret, unsigned int *siglen, RSA *rsa)
{
    int encrypt_len, encoded_len = 0, ret = 0;
    unsigned char *tmps = NULL;
    const unsigned char *encoded = NULL;

    if (rsa->meth->rsa_sign) {
        return rsa->meth->rsa_sign(type, m, m_len, sigret, siglen, rsa);
    }

    /* Compute the encoded digest. */
    if (type == NID_md5_sha1) {
        /*
         * NID_md5_sha1 corresponds to the MD5/SHA1 combination in TLS 1.1 and
         * earlier. It has no DigestInfo wrapper but otherwise is
         * RSASSA-PKCS1-v1_5.
         */
        if (m_len != SSL_SIG_LENGTH) {
            FUNC3(RSA_F_RSA_SIGN, RSA_R_INVALID_MESSAGE_LENGTH);
            return 0;
        }
        encoded_len = SSL_SIG_LENGTH;
        encoded = m;
    } else {
        if (!FUNC4(&tmps, &encoded_len, type, m, m_len))
            goto err;
        encoded = tmps;
    }

    if (encoded_len > FUNC2(rsa) - RSA_PKCS1_PADDING_SIZE) {
        FUNC3(RSA_F_RSA_SIGN, RSA_R_DIGEST_TOO_BIG_FOR_RSA_KEY);
        goto err;
    }
    encrypt_len = FUNC1(encoded_len, encoded, sigret, rsa,
                                      RSA_PKCS1_PADDING);
    if (encrypt_len <= 0)
        goto err;

    *siglen = encrypt_len;
    ret = 1;

err:
    FUNC0(tmps, (size_t)encoded_len);
    return ret;
}