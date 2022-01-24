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
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned char const*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char const**,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int*) ; 
 long FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_CKE_DHE ; 
 int /*<<< orphan*/  SSL_R_BN_LIB ; 
 int /*<<< orphan*/  SSL_R_DH_PUBLIC_VALUE_LENGTH_IS_WRONG ; 
 int /*<<< orphan*/  SSL_R_MISSING_TMP_DH_KEY ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(SSL *s, PACKET *pkt)
{
#ifndef OPENSSL_NO_DH
    EVP_PKEY *skey = NULL;
    DH *cdh;
    unsigned int i;
    BIGNUM *pub_key;
    const unsigned char *data;
    EVP_PKEY *ckey = NULL;
    int ret = 0;

    if (!FUNC8(pkt, &i) || FUNC9(pkt) != i) {
        FUNC10(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CKE_DHE,
               SSL_R_DH_PUBLIC_VALUE_LENGTH_IS_WRONG);
        goto err;
    }
    skey = s->s3->tmp.pkey;
    if (skey == NULL) {
        FUNC10(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_DHE,
                 SSL_R_MISSING_TMP_DH_KEY);
        goto err;
    }

    if (FUNC9(pkt) == 0L) {
        FUNC10(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CKE_DHE,
                 SSL_R_MISSING_TMP_DH_KEY);
        goto err;
    }
    if (!FUNC7(pkt, &data, i)) {
        /* We already checked we have enough data */
        FUNC10(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_DHE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    ckey = FUNC6();
    if (ckey == NULL || FUNC3(ckey, skey) == 0) {
        FUNC10(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_DHE,
                 SSL_R_BN_LIB);
        goto err;
    }

    cdh = FUNC5(ckey);
    pub_key = FUNC0(data, i, NULL);
    if (pub_key == NULL || cdh == NULL || !FUNC2(cdh, pub_key, NULL)) {
        FUNC10(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_DHE,
                 ERR_R_INTERNAL_ERROR);
        FUNC1(pub_key);
        goto err;
    }

    if (FUNC11(s, skey, ckey, 1) == 0) {
        /* SSLfatal() already called */
        goto err;
    }

    ret = 1;
    FUNC4(s->s3->tmp.pkey);
    s->s3->tmp.pkey = NULL;
 err:
    FUNC4(ckey);
    return ret;
#else
    /* Should never happen */
    SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_DHE,
             ERR_R_INTERNAL_ERROR);
    return 0;
#endif
}