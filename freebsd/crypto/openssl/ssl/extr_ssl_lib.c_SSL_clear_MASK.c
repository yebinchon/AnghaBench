#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int mdpth; int pdpth; int /*<<< orphan*/ * mtlsa; int /*<<< orphan*/ * mcert; } ;
struct TYPE_15__ {int /*<<< orphan*/  rlayer; TYPE_3__* method; TYPE_2__* ctx; scalar_t__ shared_sigalgslen; int /*<<< orphan*/ * shared_sigalgs; int /*<<< orphan*/  param; TYPE_1__ dane; int /*<<< orphan*/ * pha_dgst; int /*<<< orphan*/  key_update; scalar_t__ first_packet; int /*<<< orphan*/ * init_buf; int /*<<< orphan*/  rwstate; int /*<<< orphan*/  version; int /*<<< orphan*/  client_version; scalar_t__ renegotiate; scalar_t__ shutdown; scalar_t__ hit; scalar_t__ error; scalar_t__ sent_tickets; scalar_t__ hello_retry_request; scalar_t__ psksession_id_len; int /*<<< orphan*/ * psksession_id; int /*<<< orphan*/ * psksession; int /*<<< orphan*/ * session; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* ssl_clear ) (TYPE_4__*) ;int /*<<< orphan*/  (* ssl_new ) (TYPE_4__*) ;int /*<<< orphan*/  (* ssl_free ) (TYPE_4__*) ;int /*<<< orphan*/  version; } ;
struct TYPE_13__ {TYPE_3__* method; } ;
typedef  TYPE_4__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_F_SSL_CLEAR ; 
 int /*<<< orphan*/  SSL_KEY_UPDATE_NONE ; 
 int /*<<< orphan*/  SSL_NOTHING ; 
 int /*<<< orphan*/  SSL_R_NO_METHOD_SPECIFIED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 

int FUNC14(SSL *s)
{
    if (s->method == NULL) {
        FUNC5(SSL_F_SSL_CLEAR, SSL_R_NO_METHOD_SPECIFIED);
        return 0;
    }

    if (FUNC10(s)) {
        FUNC4(s->session);
        s->session = NULL;
    }
    FUNC4(s->psksession);
    s->psksession = NULL;
    FUNC2(s->psksession_id);
    s->psksession_id = NULL;
    s->psksession_id_len = 0;
    s->hello_retry_request = 0;
    s->sent_tickets = 0;

    s->error = 0;
    s->hit = 0;
    s->shutdown = 0;

    if (s->renegotiate) {
        FUNC5(SSL_F_SSL_CLEAR, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    FUNC9(s);

    s->version = s->method->version;
    s->client_version = s->version;
    s->rwstate = SSL_NOTHING;

    FUNC0(s->init_buf);
    s->init_buf = NULL;
    FUNC8(s);
    s->first_packet = 0;

    s->key_update = SSL_KEY_UPDATE_NONE;

    FUNC1(s->pha_dgst);
    s->pha_dgst = NULL;

    /* Reset DANE verification result state */
    s->dane.mdpth = -1;
    s->dane.pdpth = -1;
    FUNC7(s->dane.mcert);
    s->dane.mcert = NULL;
    s->dane.mtlsa = NULL;

    /* Clear the verification result peername */
    FUNC6(s->param, NULL);

    /* Clear any shared connection state */
    FUNC2(s->shared_sigalgs);
    s->shared_sigalgs = NULL;
    s->shared_sigalgslen = 0;

    /*
     * Check to see if we were changed into a different method, if so, revert
     * back.
     */
    if (s->method != s->ctx->method) {
        s->method->ssl_free(s);
        s->method = s->ctx->method;
        if (!s->method->ssl_new(s))
            return 0;
    } else {
        if (!s->method->ssl_clear(s))
            return 0;
    }

    FUNC3(&s->rlayer);

    return 1;
}