#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_3__* s3; } ;
struct TYPE_15__ {int /*<<< orphan*/ * psk; int /*<<< orphan*/  psklen; TYPE_1__* new_cipher; } ;
struct TYPE_16__ {TYPE_2__ tmp; } ;
struct TYPE_14__ {unsigned long algorithm_mkey; } ;
typedef  TYPE_4__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  MSG_PROCESS_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_PROCESS_CONTINUE_PROCESSING ; 
 int /*<<< orphan*/  MSG_PROCESS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_CLIENT_KEY_EXCHANGE ; 
 unsigned long SSL_PSK ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SSL_R_UNKNOWN_CIPHER_TYPE ; 
 unsigned long SSL_kDHE ; 
 unsigned long SSL_kDHEPSK ; 
 unsigned long SSL_kECDHE ; 
 unsigned long SSL_kECDHEPSK ; 
 unsigned long SSL_kGOST ; 
 unsigned long SSL_kPSK ; 
 unsigned long SSL_kRSA ; 
 unsigned long SSL_kRSAPSK ; 
 unsigned long SSL_kSRP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *) ; 

MSG_PROCESS_RETURN FUNC10(SSL *s, PACKET *pkt)
{
    unsigned long alg_k;

    alg_k = s->s3->tmp.new_cipher->algorithm_mkey;

    /* For PSK parse and retrieve identity, obtain PSK key */
    if ((alg_k & SSL_PSK) && !FUNC7(s, pkt)) {
        /* SSLfatal() already called */
        goto err;
    }

    if (alg_k & SSL_kPSK) {
        /* Identity extracted earlier: should be nothing left */
        if (FUNC1(pkt) != 0) {
            FUNC2(s, SSL_AD_DECODE_ERROR,
                     SSL_F_TLS_PROCESS_CLIENT_KEY_EXCHANGE,
                     SSL_R_LENGTH_MISMATCH);
            goto err;
        }
        /* PSK handled by ssl_generate_master_secret */
        if (!FUNC3(s, NULL, 0, 0)) {
            /* SSLfatal() already called */
            goto err;
        }
    } else if (alg_k & (SSL_kRSA | SSL_kRSAPSK)) {
        if (!FUNC8(s, pkt)) {
            /* SSLfatal() already called */
            goto err;
        }
    } else if (alg_k & (SSL_kDHE | SSL_kDHEPSK)) {
        if (!FUNC4(s, pkt)) {
            /* SSLfatal() already called */
            goto err;
        }
    } else if (alg_k & (SSL_kECDHE | SSL_kECDHEPSK)) {
        if (!FUNC5(s, pkt)) {
            /* SSLfatal() already called */
            goto err;
        }
    } else if (alg_k & SSL_kSRP) {
        if (!FUNC9(s, pkt)) {
            /* SSLfatal() already called */
            goto err;
        }
    } else if (alg_k & SSL_kGOST) {
        if (!FUNC6(s, pkt)) {
            /* SSLfatal() already called */
            goto err;
        }
    } else {
        FUNC2(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_PROCESS_CLIENT_KEY_EXCHANGE,
                 SSL_R_UNKNOWN_CIPHER_TYPE);
        goto err;
    }

    return MSG_PROCESS_CONTINUE_PROCESSING;
 err:
#ifndef OPENSSL_NO_PSK
    FUNC0(s->s3->tmp.psk, s->s3->tmp.psklen);
    s->s3->tmp.psk = NULL;
#endif
    return MSG_PROCESS_ERROR;
}