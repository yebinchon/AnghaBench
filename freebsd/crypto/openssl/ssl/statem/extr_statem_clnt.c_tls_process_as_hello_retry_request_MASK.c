#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ tls13_cookie_len; } ;
struct TYPE_16__ {scalar_t__ init_num; TYPE_4__* init_buf; TYPE_3__* s3; TYPE_1__ ext; int /*<<< orphan*/ * enc_write_ctx; } ;
struct TYPE_15__ {scalar_t__ data; } ;
struct TYPE_13__ {int /*<<< orphan*/ * pkey; } ;
struct TYPE_14__ {TYPE_2__ tmp; } ;
typedef  TYPE_5__ SSL ;
typedef  int /*<<< orphan*/  RAW_EXTENSION ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  MSG_PROCESS_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_PROCESS_ERROR ; 
 int /*<<< orphan*/  MSG_PROCESS_FINISHED_READING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ SSL3_HM_HEADER_LENGTH ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_AS_HELLO_RETRY_REQUEST ; 
 int /*<<< orphan*/  SSL_R_NO_CHANGE_FOLLOWING_HRR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static MSG_PROCESS_RETURN FUNC7(SSL *s,
                                                             PACKET *extpkt)
{
    RAW_EXTENSION *extensions = NULL;

    /*
     * If we were sending early_data then the enc_write_ctx is now invalid and
     * should not be used.
     */
    FUNC0(s->enc_write_ctx);
    s->enc_write_ctx = NULL;

    if (!FUNC5(s, extpkt, SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST,
                                &extensions, NULL, 1)
            || !FUNC6(s, SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST,
                                         extensions, NULL, 0, 1)) {
        /* SSLfatal() already called */
        goto err;
    }

    FUNC1(extensions);
    extensions = NULL;

    if (s->ext.tls13_cookie_len == 0
#if !defined(OPENSSL_NO_EC) || !defined(OPENSSL_NO_DH)
        && s->s3->tmp.pkey != NULL
#endif
        ) {
        /*
         * We didn't receive a cookie or a new key_share so the next
         * ClientHello will not change
         */
        FUNC2(s, SSL_AD_ILLEGAL_PARAMETER,
                 SSL_F_TLS_PROCESS_AS_HELLO_RETRY_REQUEST,
                 SSL_R_NO_CHANGE_FOLLOWING_HRR);
        goto err;
    }

    /*
     * Re-initialise the Transcript Hash. We're going to prepopulate it with
     * a synthetic message_hash in place of ClientHello1.
     */
    if (!FUNC3(s, NULL, 0, NULL, 0)) {
        /* SSLfatal() already called */
        goto err;
    }

    /*
     * Add this message to the Transcript Hash. Normally this is done
     * automatically prior to the message processing stage. However due to the
     * need to create the synthetic message hash, we defer that step until now
     * for HRR messages.
     */
    if (!FUNC4(s, (unsigned char *)s->init_buf->data,
                                s->init_num + SSL3_HM_HEADER_LENGTH)) {
        /* SSLfatal() already called */
        goto err;
    }

    return MSG_PROCESS_FINISHED_READING;
 err:
    FUNC1(extensions);
    return MSG_PROCESS_ERROR;
}