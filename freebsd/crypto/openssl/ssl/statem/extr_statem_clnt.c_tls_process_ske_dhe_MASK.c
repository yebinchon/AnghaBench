#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_4__* session; TYPE_3__* s3; } ;
struct TYPE_12__ {int /*<<< orphan*/  peer; } ;
struct TYPE_10__ {TYPE_1__* new_cipher; } ;
struct TYPE_11__ {TYPE_2__ tmp; int /*<<< orphan*/ * peer_tmp; } ;
struct TYPE_9__ {int algorithm_auth; } ;
typedef  TYPE_5__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_HANDSHAKE_FAILURE ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_SKE_DHE ; 
 int /*<<< orphan*/  SSL_R_BAD_DH_VALUE ; 
 int /*<<< orphan*/  SSL_R_DH_KEY_TOO_SMALL ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SSL_SECOP_TMP_DH ; 
 int SSL_aDSS ; 
 int SSL_aRSA ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(SSL *s, PACKET *pkt, EVP_PKEY **pkey)
{
#ifndef OPENSSL_NO_DH
    PACKET prime, generator, pub_key;
    EVP_PKEY *peer_tmp = NULL;

    DH *dh = NULL;
    BIGNUM *p = NULL, *g = NULL, *bnpub_key = NULL;

    int check_bits = 0;

    if (!FUNC13(pkt, &prime)
        || !FUNC13(pkt, &generator)
        || !FUNC13(pkt, &pub_key)) {
        FUNC15(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_SKE_DHE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    peer_tmp = FUNC11();
    dh = FUNC5();

    if (peer_tmp == NULL || dh == NULL) {
        FUNC15(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_DHE,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }

    /* TODO(size_t): Convert these calls */
    p = FUNC0(FUNC12(&prime), (int)FUNC14(&prime), NULL);
    g = FUNC0(FUNC12(&generator), (int)FUNC14(&generator),
                  NULL);
    bnpub_key = FUNC0(FUNC12(&pub_key),
                          (int)FUNC14(&pub_key), NULL);
    if (p == NULL || g == NULL || bnpub_key == NULL) {
        FUNC15(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_DHE,
                 ERR_R_BN_LIB);
        goto err;
    }

    /* test non-zero pubkey */
    if (FUNC2(bnpub_key)) {
        FUNC15(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PROCESS_SKE_DHE,
                 SSL_R_BAD_DH_VALUE);
        goto err;
    }

    if (!FUNC8(dh, p, NULL, g)) {
        FUNC15(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_DHE,
                 ERR_R_BN_LIB);
        goto err;
    }
    p = g = NULL;

    if (FUNC3(dh, &check_bits) == 0 || check_bits != 0) {
        FUNC15(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PROCESS_SKE_DHE,
                 SSL_R_BAD_DH_VALUE);
        goto err;
    }

    if (!FUNC7(dh, bnpub_key, NULL)) {
        FUNC15(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_DHE,
                 ERR_R_BN_LIB);
        goto err;
    }
    bnpub_key = NULL;

    if (!FUNC17(s, SSL_SECOP_TMP_DH, FUNC6(dh), 0, dh)) {
        FUNC15(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS_PROCESS_SKE_DHE,
                 SSL_R_DH_KEY_TOO_SMALL);
        goto err;
    }

    if (FUNC9(peer_tmp, dh) == 0) {
        FUNC15(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_DHE,
                 ERR_R_EVP_LIB);
        goto err;
    }

    s->s3->peer_tmp = peer_tmp;

    /*
     * FIXME: This makes assumptions about which ciphersuites come with
     * public keys. We should have a less ad-hoc way of doing this
     */
    if (s->s3->tmp.new_cipher->algorithm_auth & (SSL_aRSA | SSL_aDSS))
        *pkey = FUNC16(s->session->peer);
    /* else anonymous DH, so no certificate or pkey. */

    return 1;

 err:
    FUNC1(p);
    FUNC1(g);
    FUNC1(bnpub_key);
    FUNC4(dh);
    FUNC10(peer_tmp);

    return 0;
#else
    SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_DHE,
             ERR_R_INTERNAL_ERROR);
    return 0;
#endif
}