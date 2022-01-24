#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORK_STATE ;
struct TYPE_22__ {int hand_state; int use_timer; } ;
struct TYPE_21__ {TYPE_5__* s3; int /*<<< orphan*/  early_data_state; TYPE_4__* method; TYPE_1__* session; int /*<<< orphan*/  sent_tickets; int /*<<< orphan*/  shutdown; TYPE_7__ statem; } ;
struct TYPE_17__ {int /*<<< orphan*/  new_cipher; } ;
struct TYPE_20__ {int flags; TYPE_2__ tmp; } ;
struct TYPE_19__ {TYPE_3__* ssl3_enc; } ;
struct TYPE_18__ {int /*<<< orphan*/  (* setup_key_block ) (TYPE_6__*) ;} ;
struct TYPE_16__ {int /*<<< orphan*/  cipher; } ;
typedef  TYPE_6__ SSL ;
typedef  TYPE_7__ OSSL_STATEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  DTLS_ST_SW_HELLO_VERIFY_REQUEST 135 
 int /*<<< orphan*/  SSL_EARLY_DATA_ACCEPTING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int TLS1_FLAGS_STATELESS ; 
#define  TLS_ST_EARLY_DATA 134 
#define  TLS_ST_OK 133 
#define  TLS_ST_SW_CHANGE 132 
#define  TLS_ST_SW_HELLO_REQ 131 
#define  TLS_ST_SW_SESSION_TICKET 130 
#define  TLS_ST_SW_SRVR_DONE 129 
#define  TLS_ST_SW_SRVR_HELLO 128 
 int /*<<< orphan*/  WORK_ERROR ; 
 int /*<<< orphan*/  WORK_FINISHED_CONTINUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,int,int) ; 

WORK_STATE FUNC8(SSL *s, WORK_STATE wst)
{
    OSSL_STATEM *st = &s->statem;

    switch (st->hand_state) {
    default:
        /* No pre work to be done */
        break;

    case TLS_ST_SW_HELLO_REQ:
        s->shutdown = 0;
        if (FUNC1(s))
            FUNC4(s);
        break;

    case DTLS_ST_SW_HELLO_VERIFY_REQUEST:
        s->shutdown = 0;
        if (FUNC1(s)) {
            FUNC4(s);
            /* We don't buffer this message so don't use the timer */
            st->use_timer = 0;
        }
        break;

    case TLS_ST_SW_SRVR_HELLO:
        if (FUNC1(s)) {
            /*
             * Messages we write from now on should be buffered and
             * retransmitted if necessary, so we need to use the timer now
             */
            st->use_timer = 1;
        }
        break;

    case TLS_ST_SW_SRVR_DONE:
#ifndef OPENSSL_NO_SCTP
        if (FUNC1(s) && FUNC0(FUNC3(s))) {
            /* Calls SSLfatal() as required */
            return FUNC5(s);
        }
#endif
        return WORK_FINISHED_CONTINUE;

    case TLS_ST_SW_SESSION_TICKET:
        if (FUNC2(s) && s->sent_tickets == 0) {
            /*
             * Actually this is the end of the handshake, but we're going
             * straight into writing the session ticket out. So we finish off
             * the handshake, but keep the various buffers active.
             *
             * Calls SSLfatal as required.
             */
            return FUNC7(s, wst, 0, 0);
        } if (FUNC1(s)) {
            /*
             * We're into the last flight. We don't retransmit the last flight
             * unless we need to, so we don't use the timer
             */
            st->use_timer = 0;
        }
        break;

    case TLS_ST_SW_CHANGE:
        if (FUNC2(s))
            break;
        s->session->cipher = s->s3->tmp.new_cipher;
        if (!s->method->ssl3_enc->setup_key_block(s)) {
            /* SSLfatal() already called */
            return WORK_ERROR;
        }
        if (FUNC1(s)) {
            /*
             * We're into the last flight. We don't retransmit the last flight
             * unless we need to, so we don't use the timer. This might have
             * already been set to 0 if we sent a NewSessionTicket message,
             * but we'll set it again here in case we didn't.
             */
            st->use_timer = 0;
        }
        return WORK_FINISHED_CONTINUE;

    case TLS_ST_EARLY_DATA:
        if (s->early_data_state != SSL_EARLY_DATA_ACCEPTING
                && (s->s3->flags & TLS1_FLAGS_STATELESS) == 0)
            return WORK_FINISHED_CONTINUE;
        /* Fall through */

    case TLS_ST_OK:
        /* Calls SSLfatal() as required */
        return FUNC7(s, wst, 1, 1);
    }

    return WORK_FINISHED_CONTINUE;
}