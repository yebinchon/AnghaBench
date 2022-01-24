#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {scalar_t__ ticket_expected; int /*<<< orphan*/ * hostname; } ;
struct TYPE_30__ {int /*<<< orphan*/  servername_done; int /*<<< orphan*/  hit; TYPE_6__ ext; TYPE_5__* session_ctx; TYPE_5__* ctx; TYPE_3__* session; scalar_t__ server; } ;
struct TYPE_28__ {scalar_t__ tick_age_add; scalar_t__ tick_lifetime_hint; scalar_t__ ticklen; int /*<<< orphan*/ * tick; } ;
struct TYPE_29__ {TYPE_7__ ext; } ;
struct TYPE_25__ {int /*<<< orphan*/  sess_accept; } ;
struct TYPE_22__ {int (* servername_cb ) (TYPE_9__*,int*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  servername_arg; } ;
struct TYPE_26__ {TYPE_4__ stats; TYPE_1__ ext; } ;
struct TYPE_23__ {int /*<<< orphan*/ * hostname; } ;
struct TYPE_24__ {TYPE_2__ ext; } ;
typedef  TYPE_8__ SSL_SESSION ;
typedef  TYPE_9__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL3_AL_WARNING ; 
 int SSL_AD_INTERNAL_ERROR ; 
 int SSL_AD_UNRECOGNIZED_NAME ; 
 int /*<<< orphan*/  SSL_F_FINAL_SERVER_NAME ; 
 scalar_t__ FUNC2 (TYPE_9__*) ; 
 scalar_t__ FUNC3 (TYPE_9__*) ; 
 int SSL_OP_NO_TICKET ; 
 int /*<<< orphan*/  SSL_R_CALLBACK_FAILED ; 
#define  SSL_TLSEXT_ERR_ALERT_FATAL 130 
#define  SSL_TLSEXT_ERR_ALERT_WARNING 129 
#define  SSL_TLSEXT_ERR_NOACK 128 
 int SSL_TLSEXT_ERR_OK ; 
 int FUNC4 (TYPE_9__*) ; 
 TYPE_8__* FUNC5 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,TYPE_8__*) ; 
 int FUNC10 (TYPE_9__*,int*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_9__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(SSL *s, unsigned int context, int sent)
{
    int ret = SSL_TLSEXT_ERR_NOACK;
    int altmp = SSL_AD_UNRECOGNIZED_NAME;
    int was_ticket = (FUNC4(s) & SSL_OP_NO_TICKET) == 0;

    if (!FUNC7(s->ctx != NULL) || !FUNC7(s->session_ctx != NULL)) {
        FUNC6(s, SSL_AD_INTERNAL_ERROR, SSL_F_FINAL_SERVER_NAME,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (s->ctx->ext.servername_cb != NULL)
        ret = s->ctx->ext.servername_cb(s, &altmp,
                                        s->ctx->ext.servername_arg);
    else if (s->session_ctx->ext.servername_cb != NULL)
        ret = s->session_ctx->ext.servername_cb(s, &altmp,
                                       s->session_ctx->ext.servername_arg);

    /*
     * For servers, propagate the SNI hostname from the temporary
     * storage in the SSL to the persistent SSL_SESSION, now that we
     * know we accepted it.
     * Clients make this copy when parsing the server's response to
     * the extension, which is when they find out that the negotiation
     * was successful.
     */
    if (s->server) {
        /* TODO(OpenSSL1.2) revisit !sent case */
        if (sent && ret == SSL_TLSEXT_ERR_OK && (!s->hit || FUNC3(s))) {
            /* Only store the hostname in the session if we accepted it. */
            FUNC0(s->session->ext.hostname);
            s->session->ext.hostname = FUNC1(s->ext.hostname);
            if (s->session->ext.hostname == NULL && s->ext.hostname != NULL) {
                FUNC6(s, SSL_AD_INTERNAL_ERROR, SSL_F_FINAL_SERVER_NAME,
                         ERR_R_INTERNAL_ERROR);
            }
        }
    }

    /*
     * If we switched contexts (whether here or in the client_hello callback),
     * move the sess_accept increment from the session_ctx to the new
     * context, to avoid the confusing situation of having sess_accept_good
     * exceed sess_accept (zero) for the new context.
     */
    if (FUNC2(s) && s->ctx != s->session_ctx) {
        FUNC12(&s->ctx->stats.sess_accept);
        FUNC13(&s->session_ctx->stats.sess_accept);
    }

    /*
     * If we're expecting to send a ticket, and tickets were previously enabled,
     * and now tickets are disabled, then turn off expected ticket.
     * Also, if this is not a resumption, create a new session ID
     */
    if (ret == SSL_TLSEXT_ERR_OK && s->ext.ticket_expected
            && was_ticket && (FUNC4(s) & SSL_OP_NO_TICKET) != 0) {
        s->ext.ticket_expected = 0;
        if (!s->hit) {
            SSL_SESSION* ss = FUNC5(s);

            if (ss != NULL) {
                FUNC0(ss->ext.tick);
                ss->ext.tick = NULL;
                ss->ext.ticklen = 0;
                ss->ext.tick_lifetime_hint = 0;
                ss->ext.tick_age_add = 0;
                if (!FUNC9(s, ss)) {
                    FUNC6(s, SSL_AD_INTERNAL_ERROR, SSL_F_FINAL_SERVER_NAME,
                             ERR_R_INTERNAL_ERROR);
                    return 0;
                }
            } else {
                FUNC6(s, SSL_AD_INTERNAL_ERROR, SSL_F_FINAL_SERVER_NAME,
                         ERR_R_INTERNAL_ERROR);
                return 0;
            }
        }
    }

    switch (ret) {
    case SSL_TLSEXT_ERR_ALERT_FATAL:
        FUNC6(s, altmp, SSL_F_FINAL_SERVER_NAME, SSL_R_CALLBACK_FAILED);
        return 0;

    case SSL_TLSEXT_ERR_ALERT_WARNING:
        /* TLSv1.3 doesn't have warning alerts so we suppress this */
        if (!FUNC3(s))
            FUNC8(s, SSL3_AL_WARNING, altmp);
        return 1;

    case SSL_TLSEXT_ERR_NOACK:
        s->servername_done = 0;
        return 1;

    default:
        return 1;
    }
}