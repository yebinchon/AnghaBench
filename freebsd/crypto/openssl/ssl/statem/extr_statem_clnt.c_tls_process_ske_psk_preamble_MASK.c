#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* session; } ;
struct TYPE_5__ {int /*<<< orphan*/ * psk_identity_hint; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ PSK_MAX_IDENTITY_LEN ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_HANDSHAKE_FAILURE ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_SKE_PSK_PREAMBLE ; 
 int /*<<< orphan*/  SSL_R_DATA_LENGTH_TOO_LONG ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(SSL *s, PACKET *pkt)
{
#ifndef OPENSSL_NO_PSK
    PACKET psk_identity_hint;

    /* PSK ciphersuites are preceded by an identity hint */

    if (!FUNC1(pkt, &psk_identity_hint)) {
        FUNC4(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_SKE_PSK_PREAMBLE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    /*
     * Store PSK identity hint for later use, hint is used in
     * tls_construct_client_key_exchange.  Assume that the maximum length of
     * a PSK identity hint can be as long as the maximum length of a PSK
     * identity.
     */
    if (FUNC2(&psk_identity_hint) > PSK_MAX_IDENTITY_LEN) {
        FUNC4(s, SSL_AD_HANDSHAKE_FAILURE,
                 SSL_F_TLS_PROCESS_SKE_PSK_PREAMBLE,
                 SSL_R_DATA_LENGTH_TOO_LONG);
        return 0;
    }

    if (FUNC2(&psk_identity_hint) == 0) {
        FUNC0(s->session->psk_identity_hint);
        s->session->psk_identity_hint = NULL;
    } else if (!FUNC3(&psk_identity_hint,
                               &s->session->psk_identity_hint)) {
        FUNC4(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_PSK_PREAMBLE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    return 1;
#else
    SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_PSK_PREAMBLE,
             ERR_R_INTERNAL_ERROR);
    return 0;
#endif
}