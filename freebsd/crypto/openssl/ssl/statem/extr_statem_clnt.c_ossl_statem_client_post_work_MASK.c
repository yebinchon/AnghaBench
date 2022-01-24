#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORK_STATE ;
struct TYPE_29__ {int hand_state; } ;
struct TYPE_28__ {int options; int first_packet; TYPE_6__* method; int /*<<< orphan*/  post_handshake_auth; int /*<<< orphan*/  hit; TYPE_4__* s3; TYPE_1__* session; int /*<<< orphan*/  max_early_data; int /*<<< orphan*/  early_data_state; int /*<<< orphan*/  hello_retry_request; int /*<<< orphan*/ * enc_write_ctx; scalar_t__ init_num; TYPE_8__ statem; } ;
struct TYPE_27__ {TYPE_5__* ssl3_enc; } ;
struct TYPE_26__ {int /*<<< orphan*/  (* change_cipher_state ) (TYPE_7__*,int) ;int /*<<< orphan*/  (* setup_key_block ) (TYPE_7__*) ;} ;
struct TYPE_24__ {TYPE_2__* new_compression; int /*<<< orphan*/  new_cipher; } ;
struct TYPE_25__ {TYPE_3__ tmp; } ;
struct TYPE_23__ {int /*<<< orphan*/  id; } ;
struct TYPE_22__ {int /*<<< orphan*/  compress_meth; int /*<<< orphan*/  cipher; } ;
typedef  TYPE_7__ SSL ;
typedef  TYPE_8__ OSSL_STATEM ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CTRL_DGRAM_SCTP_NEXT_AUTH_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int SSL3_CC_APPLICATION ; 
 int SSL3_CC_EARLY ; 
 int /*<<< orphan*/  SSL3_CC_WRITE ; 
 int SSL3_CHANGE_CIPHER_CLIENT_WRITE ; 
 int /*<<< orphan*/  SSL_EARLY_DATA_CONNECTING ; 
 int /*<<< orphan*/  SSL_HRR_PENDING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int SSL_OP_ENABLE_MIDDLEBOX_COMPAT ; 
 int /*<<< orphan*/  SSL_PHA_REQUESTED ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
#define  TLS_ST_CW_CHANGE 133 
#define  TLS_ST_CW_CLNT_HELLO 132 
#define  TLS_ST_CW_END_OF_EARLY_DATA 131 
#define  TLS_ST_CW_FINISHED 130 
#define  TLS_ST_CW_KEY_EXCH 129 
#define  TLS_ST_CW_KEY_UPDATE 128 
 int /*<<< orphan*/  WORK_ERROR ; 
 int /*<<< orphan*/  WORK_FINISHED_CONTINUE ; 
 int /*<<< orphan*/  WORK_MORE_A ; 
 int /*<<< orphan*/  WORK_MORE_B ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*) ; 

WORK_STATE FUNC14(SSL *s, WORK_STATE wst)
{
    OSSL_STATEM *st = &s->statem;

    s->init_num = 0;

    switch (st->hand_state) {
    default:
        /* No post work to be done */
        break;

    case TLS_ST_CW_CLNT_HELLO:
        if (s->early_data_state == SSL_EARLY_DATA_CONNECTING
                && s->max_early_data > 0) {
            /*
             * We haven't selected TLSv1.3 yet so we don't call the change
             * cipher state function associated with the SSL_METHOD. Instead
             * we call tls13_change_cipher_state() directly.
             */
            if ((s->options & SSL_OP_ENABLE_MIDDLEBOX_COMPAT) == 0) {
                if (!FUNC10(s,
                            SSL3_CC_EARLY | SSL3_CHANGE_CIPHER_CLIENT_WRITE)) {
                    /* SSLfatal() already called */
                    return WORK_ERROR;
                }
            }
            /* else we're in compat mode so we delay flushing until after CCS */
        } else if (!FUNC6(s)) {
            return WORK_MORE_A;
        }

        if (FUNC2(s)) {
            /* Treat the next message as the first packet */
            s->first_packet = 1;
        }
        break;

    case TLS_ST_CW_END_OF_EARLY_DATA:
        /*
         * We set the enc_write_ctx back to NULL because we may end up writing
         * in cleartext again if we get a HelloRetryRequest from the server.
         */
        FUNC1(s->enc_write_ctx);
        s->enc_write_ctx = NULL;
        break;

    case TLS_ST_CW_KEY_EXCH:
        if (FUNC13(s) == 0) {
            /* SSLfatal() already called */
            return WORK_ERROR;
        }
        break;

    case TLS_ST_CW_CHANGE:
        if (FUNC3(s) || s->hello_retry_request == SSL_HRR_PENDING)
            break;
        if (s->early_data_state == SSL_EARLY_DATA_CONNECTING
                    && s->max_early_data > 0) {
            /*
             * We haven't selected TLSv1.3 yet so we don't call the change
             * cipher state function associated with the SSL_METHOD. Instead
             * we call tls13_change_cipher_state() directly.
             */
            if (!FUNC10(s,
                        SSL3_CC_EARLY | SSL3_CHANGE_CIPHER_CLIENT_WRITE))
                return WORK_ERROR;
            break;
        }
        s->session->cipher = s->s3->tmp.new_cipher;
#ifdef OPENSSL_NO_COMP
        s->session->compress_meth = 0;
#else
        if (s->s3->tmp.new_compression == NULL)
            s->session->compress_meth = 0;
        else
            s->session->compress_meth = s->s3->tmp.new_compression->id;
#endif
        if (!s->method->ssl3_enc->setup_key_block(s)) {
            /* SSLfatal() already called */
            return WORK_ERROR;
        }

        if (!s->method->ssl3_enc->change_cipher_state(s,
                                          SSL3_CHANGE_CIPHER_CLIENT_WRITE)) {
            /* SSLfatal() already called */
            return WORK_ERROR;
        }

        if (FUNC2(s)) {
#ifndef OPENSSL_NO_SCTP
            if (s->hit) {
                /*
                 * Change to new shared key of SCTP-Auth, will be ignored if
                 * no SCTP used.
                 */
                FUNC0(FUNC4(s), BIO_CTRL_DGRAM_SCTP_NEXT_AUTH_KEY,
                         0, NULL);
            }
#endif

            FUNC5(s, SSL3_CC_WRITE);
        }
        break;

    case TLS_ST_CW_FINISHED:
#ifndef OPENSSL_NO_SCTP
        if (wst == WORK_MORE_A && FUNC2(s) && s->hit == 0) {
            /*
             * Change to new shared key of SCTP-Auth, will be ignored if
             * no SCTP used.
             */
            FUNC0(FUNC4(s), BIO_CTRL_DGRAM_SCTP_NEXT_AUTH_KEY,
                     0, NULL);
        }
#endif
        if (FUNC6(s) != 1)
            return WORK_MORE_B;

        if (FUNC3(s)) {
            if (!FUNC11(s)) {
                /* SSLfatal() already called */
                return WORK_ERROR;
            }
            if (s->post_handshake_auth != SSL_PHA_REQUESTED) {
                if (!s->method->ssl3_enc->change_cipher_state(s,
                        SSL3_CC_APPLICATION | SSL3_CHANGE_CIPHER_CLIENT_WRITE)) {
                    /* SSLfatal() already called */
                    return WORK_ERROR;
                }
            }
        }
        break;

    case TLS_ST_CW_KEY_UPDATE:
        if (FUNC6(s) != 1)
            return WORK_MORE_A;
        if (!FUNC12(s, 1)) {
            /* SSLfatal() already called */
            return WORK_ERROR;
        }
        break;
    }

    return WORK_FINISHED_CONTINUE;
}