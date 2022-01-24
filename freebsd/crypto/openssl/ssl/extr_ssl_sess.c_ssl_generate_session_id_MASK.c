#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ ticket_expected; } ;
struct TYPE_14__ {int version; int /*<<< orphan*/  lock; TYPE_2__* session_ctx; int /*<<< orphan*/  (* generate_session_id ) (TYPE_4__*,int /*<<< orphan*/ ,unsigned int*) ;TYPE_1__ ext; } ;
struct TYPE_13__ {unsigned int session_id_length; int /*<<< orphan*/  session_id; } ;
struct TYPE_12__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  (* generate_session_id ) (TYPE_4__*,int /*<<< orphan*/ ,unsigned int*) ;} ;
typedef  TYPE_3__ SSL_SESSION ;
typedef  TYPE_4__ SSL ;
typedef  int /*<<< orphan*/  (* GEN_SESSION_CB ) (TYPE_4__*,int /*<<< orphan*/ ,unsigned int*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  DTLS1_2_VERSION 135 
#define  DTLS1_BAD_VER 134 
#define  DTLS1_VERSION 133 
 unsigned int SSL3_SSL_SESSION_ID_LENGTH ; 
#define  SSL3_VERSION 132 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL_GENERATE_SESSION_ID ; 
 int /*<<< orphan*/  SSL_R_SSL_SESSION_ID_CALLBACK_FAILED ; 
 int /*<<< orphan*/  SSL_R_SSL_SESSION_ID_CONFLICT ; 
 int /*<<< orphan*/  SSL_R_SSL_SESSION_ID_HAS_BAD_LENGTH ; 
 int /*<<< orphan*/  SSL_R_UNSUPPORTED_SSL_VERSION ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TLS1_1_VERSION 131 
#define  TLS1_2_VERSION 130 
#define  TLS1_3_VERSION 129 
#define  TLS1_VERSION 128 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC6(SSL *s, SSL_SESSION *ss)
{
    unsigned int tmp;
    GEN_SESSION_CB cb = def_generate_session_id;

    switch (s->version) {
    case SSL3_VERSION:
    case TLS1_VERSION:
    case TLS1_1_VERSION:
    case TLS1_2_VERSION:
    case TLS1_3_VERSION:
    case DTLS1_BAD_VER:
    case DTLS1_VERSION:
    case DTLS1_2_VERSION:
        ss->session_id_length = SSL3_SSL_SESSION_ID_LENGTH;
        break;
    default:
        FUNC3(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_SESSION_ID,
                 SSL_R_UNSUPPORTED_SSL_VERSION);
        return 0;
    }

    /*-
     * If RFC5077 ticket, use empty session ID (as server).
     * Note that:
     * (a) ssl_get_prev_session() does lookahead into the
     *     ClientHello extensions to find the session ticket.
     *     When ssl_get_prev_session() fails, statem_srvr.c calls
     *     ssl_get_new_session() in tls_process_client_hello().
     *     At that point, it has not yet parsed the extensions,
     *     however, because of the lookahead, it already knows
     *     whether a ticket is expected or not.
     *
     * (b) statem_clnt.c calls ssl_get_new_session() before parsing
     *     ServerHello extensions, and before recording the session
     *     ID received from the server, so this block is a noop.
     */
    if (s->ext.ticket_expected) {
        ss->session_id_length = 0;
        return 1;
    }

    /* Choose which callback will set the session ID */
    FUNC0(s->lock);
    FUNC0(s->session_ctx->lock);
    if (s->generate_session_id)
        cb = s->generate_session_id;
    else if (s->session_ctx->generate_session_id)
        cb = s->session_ctx->generate_session_id;
    FUNC1(s->session_ctx->lock);
    FUNC1(s->lock);
    /* Choose a session ID */
    FUNC5(ss->session_id, 0, ss->session_id_length);
    tmp = (int)ss->session_id_length;
    if (!cb(s, ss->session_id, &tmp)) {
        /* The callback failed */
        FUNC3(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_SESSION_ID,
                 SSL_R_SSL_SESSION_ID_CALLBACK_FAILED);
        return 0;
    }
    /*
     * Don't allow the callback to set the session length to zero. nor
     * set it higher than it was.
     */
    if (tmp == 0 || tmp > ss->session_id_length) {
        /* The callback set an illegal length */
        FUNC3(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_SESSION_ID,
                 SSL_R_SSL_SESSION_ID_HAS_BAD_LENGTH);
        return 0;
    }
    ss->session_id_length = tmp;
    /* Finally, check for a conflict */
    if (FUNC2(s, ss->session_id,
                                    (unsigned int)ss->session_id_length)) {
        FUNC3(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_SESSION_ID,
                 SSL_R_SSL_SESSION_ID_CONFLICT);
        return 0;
    }

    return 1;
}