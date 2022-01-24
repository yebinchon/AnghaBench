#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_7__ {TYPE_1__* s3; } ;
struct TYPE_6__ {int /*<<< orphan*/ * peer_tmp; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CKE_ECDHE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(SSL *s, WPACKET *pkt)
{
#ifndef OPENSSL_NO_EC
    unsigned char *encodedPoint = NULL;
    size_t encoded_pt_len = 0;
    EVP_PKEY *ckey = NULL, *skey = NULL;
    int ret = 0;

    skey = s->s3->peer_tmp;
    if (skey == NULL) {
        FUNC3(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_ECDHE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    ckey = FUNC6(skey);
    if (ckey == NULL) {
        FUNC3(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_ECDHE,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (FUNC5(s, ckey, skey, 0) == 0) {
        /* SSLfatal() already called */
        goto err;
    }

    /* Generate encoding of client key */
    encoded_pt_len = FUNC1(ckey, &encodedPoint);

    if (encoded_pt_len == 0) {
        FUNC3(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_ECDHE,
                 ERR_R_EC_LIB);
        goto err;
    }

    if (!FUNC4(pkt, encodedPoint, encoded_pt_len)) {
        FUNC3(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_ECDHE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    ret = 1;
 err:
    FUNC2(encodedPoint);
    FUNC0(ckey);
    return ret;
#else
    SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_ECDHE,
             ERR_R_INTERNAL_ERROR);
    return 0;
#endif
}