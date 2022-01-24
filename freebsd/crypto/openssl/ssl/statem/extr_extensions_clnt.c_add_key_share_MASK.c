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
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_9__ {scalar_t__ hello_retry_request; TYPE_2__* s3; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pkey; } ;
struct TYPE_8__ {unsigned int group_id; TYPE_1__ tmp; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_ADD_KEY_SHARE ; 
 scalar_t__ SSL_HRR_PENDING ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*,unsigned int) ; 

__attribute__((used)) static int FUNC8(SSL *s, WPACKET *pkt, unsigned int curve_id)
{
    unsigned char *encoded_point = NULL;
    EVP_PKEY *key_share_key = NULL;
    size_t encodedlen;

    if (s->s3->tmp.pkey != NULL) {
        if (!FUNC6(s->hello_retry_request == SSL_HRR_PENDING)) {
            FUNC3(s, SSL_AD_INTERNAL_ERROR, SSL_F_ADD_KEY_SHARE,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
        /*
         * Could happen if we got an HRR that wasn't requesting a new key_share
         */
        key_share_key = s->s3->tmp.pkey;
    } else {
        key_share_key = FUNC7(s, curve_id);
        if (key_share_key == NULL) {
            /* SSLfatal() already called */
            return 0;
        }
    }

    /* Encode the public key. */
    encodedlen = FUNC1(key_share_key,
                                                &encoded_point);
    if (encodedlen == 0) {
        FUNC3(s, SSL_AD_INTERNAL_ERROR, SSL_F_ADD_KEY_SHARE, ERR_R_EC_LIB);
        goto err;
    }

    /* Create KeyShareEntry */
    if (!FUNC4(pkt, curve_id)
            || !FUNC5(pkt, encoded_point, encodedlen)) {
        FUNC3(s, SSL_AD_INTERNAL_ERROR, SSL_F_ADD_KEY_SHARE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    /*
     * TODO(TLS1.3): When changing to send more than one key_share we're
     * going to need to be able to save more than one EVP_PKEY. For now
     * we reuse the existing tmp.pkey
     */
    s->s3->tmp.pkey = key_share_key;
    s->s3->group_id = curve_id;
    FUNC2(encoded_point);

    return 1;
 err:
    if (s->s3->tmp.pkey == NULL)
        FUNC0(key_share_key);
    FUNC2(encoded_point);
    return 0;
}