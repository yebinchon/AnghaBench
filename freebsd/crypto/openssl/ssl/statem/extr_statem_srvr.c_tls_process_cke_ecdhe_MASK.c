#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* s3; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pkey; } ;
struct TYPE_8__ {TYPE_1__ tmp; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const**,unsigned int) ; 
 long FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_HANDSHAKE_FAILURE ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_CKE_ECDHE ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SSL_R_MISSING_TMP_ECDH_KEY ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(SSL *s, PACKET *pkt)
{
#ifndef OPENSSL_NO_EC
    EVP_PKEY *skey = s->s3->tmp.pkey;
    EVP_PKEY *ckey = NULL;
    int ret = 0;

    if (FUNC6(pkt) == 0L) {
        /* We don't support ECDH client auth */
        FUNC7(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS_PROCESS_CKE_ECDHE,
                 SSL_R_MISSING_TMP_ECDH_KEY);
        goto err;
    } else {
        unsigned int i;
        const unsigned char *data;

        /*
         * Get client's public key from encoded point in the
         * ClientKeyExchange message.
         */

        /* Get encoded point length */
        if (!FUNC4(pkt, &i) || !FUNC5(pkt, &data, i)
            || FUNC6(pkt) != 0) {
            FUNC7(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CKE_ECDHE,
                     SSL_R_LENGTH_MISMATCH);
            goto err;
        }
        if (skey == NULL) {
            FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_ECDHE,
                     SSL_R_MISSING_TMP_ECDH_KEY);
            goto err;
        }

        ckey = FUNC2();
        if (ckey == NULL || FUNC0(ckey, skey) <= 0) {
            FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_ECDHE,
                     ERR_R_EVP_LIB);
            goto err;
        }
        if (FUNC3(ckey, data, i) == 0) {
            FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_ECDHE,
                     ERR_R_EC_LIB);
            goto err;
        }
    }

    if (FUNC8(s, skey, ckey, 1) == 0) {
        /* SSLfatal() already called */
        goto err;
    }

    ret = 1;
    FUNC1(s->s3->tmp.pkey);
    s->s3->tmp.pkey = NULL;
 err:
    FUNC1(ckey);

    return ret;
#else
    /* Should never happen */
    SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_ECDHE,
             ERR_R_INTERNAL_ERROR);
    return 0;
#endif
}