#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  nonce_label ;
typedef  int /*<<< orphan*/  age_add_u ;
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_25__ {scalar_t__ sent_tickets; int next_ticket_nonce; scalar_t__ max_early_data; int options; TYPE_3__* session; TYPE_1__* s3; int /*<<< orphan*/  resumption_master_secret; scalar_t__ hit; TYPE_4__* session_ctx; } ;
struct TYPE_24__ {scalar_t__ (* generate_ticket_cb ) (TYPE_5__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ticket_cb_data; } ;
struct TYPE_22__ {scalar_t__ max_early_data; int /*<<< orphan*/  alpn_selected_len; int /*<<< orphan*/ * alpn_selected; scalar_t__ tick_age_add; } ;
struct TYPE_23__ {size_t master_key_length; long time; TYPE_2__ ext; int /*<<< orphan*/  master_key; } ;
struct TYPE_21__ {int /*<<< orphan*/  alpn_selected_len; int /*<<< orphan*/ * alpn_selected; } ;
typedef  TYPE_3__ SSL_SESSION ;
typedef  TYPE_4__ SSL_CTX ;
typedef  TYPE_5__ SSL ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_EXT_TLS1_3_NEW_SESSION_TICKET ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 int SSL_OP_NO_ANTI_REPLAY ; 
 int SSL_OP_NO_TICKET ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  SSL_SESS_CACHE_SERVER ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TICKET_NONCE_SIZE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ *,scalar_t__,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ *,scalar_t__,unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_5__*) ; 
 TYPE_3__* FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,unsigned char const*,int,unsigned char*,int,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC18(SSL *s, WPACKET *pkt)
{
    SSL_CTX *tctx = s->session_ctx;
    unsigned char tick_nonce[TICKET_NONCE_SIZE];
    union {
        unsigned char age_add_c[sizeof(uint32_t)];
        uint32_t age_add;
    } age_add_u;

    age_add_u.age_add = 0;

    if (FUNC4(s)) {
        size_t i, hashlen;
        uint64_t nonce;
        static const unsigned char nonce_label[] = "resumption";
        const EVP_MD *md = FUNC11(s);
        int hashleni = FUNC0(md);

        /* Ensure cast to size_t is safe */
        if (!FUNC9(hashleni >= 0)) {
            FUNC6(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        hashlen = (size_t)hashleni;

        /*
         * If we already sent one NewSessionTicket, or we resumed then
         * s->session may already be in a cache and so we must not modify it.
         * Instead we need to take a copy of it and modify that.
         */
        if (s->sent_tickets != 0 || s->hit) {
            SSL_SESSION *new_sess = FUNC12(s->session, 0);

            if (new_sess == NULL) {
                /* SSLfatal already called */
                goto err;
            }

            FUNC5(s->session);
            s->session = new_sess;
        }

        if (!FUNC10(s, s->session)) {
            /* SSLfatal() already called */
            goto err;
        }
        if (FUNC3(age_add_u.age_add_c, sizeof(age_add_u)) <= 0) {
            FUNC6(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        s->session->ext.tick_age_add = age_add_u.age_add;

        nonce = s->next_ticket_nonce;
        for (i = TICKET_NONCE_SIZE; i > 0; i--) {
            tick_nonce[i - 1] = (unsigned char)(nonce & 0xff);
            nonce >>= 8;
        }

        if (!FUNC16(s, md, s->resumption_master_secret,
                               nonce_label,
                               sizeof(nonce_label) - 1,
                               tick_nonce,
                               TICKET_NONCE_SIZE,
                               s->session->master_key,
                               hashlen, 1)) {
            /* SSLfatal() already called */
            goto err;
        }
        s->session->master_key_length = hashlen;

        s->session->time = (long)FUNC15(NULL);
        if (s->s3->alpn_selected != NULL) {
            FUNC1(s->session->ext.alpn_selected);
            s->session->ext.alpn_selected =
                FUNC2(s->s3->alpn_selected, s->s3->alpn_selected_len);
            if (s->session->ext.alpn_selected == NULL) {
                FUNC6(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET,
                         ERR_R_MALLOC_FAILURE);
                goto err;
            }
            s->session->ext.alpn_selected_len = s->s3->alpn_selected_len;
        }
        s->session->ext.max_early_data = s->max_early_data;
    }

    if (tctx->generate_ticket_cb != NULL &&
        tctx->generate_ticket_cb(s, tctx->ticket_cb_data) == 0)
        goto err;

    /*
     * If we are using anti-replay protection then we behave as if
     * SSL_OP_NO_TICKET is set - we are caching tickets anyway so there
     * is no point in using full stateless tickets.
     */
    if (FUNC4(s)
            && ((s->options & SSL_OP_NO_TICKET) != 0
                || (s->max_early_data > 0
                    && (s->options & SSL_OP_NO_ANTI_REPLAY) == 0))) {
        if (!FUNC7(s, pkt, age_add_u.age_add, tick_nonce)) {
            /* SSLfatal() already called */
            goto err;
        }
    } else if (!FUNC8(s, pkt, age_add_u.age_add,
                                           tick_nonce)) {
        /* SSLfatal() already called */
        goto err;
    }

    if (FUNC4(s)) {
        if (!FUNC17(s, pkt,
                                      SSL_EXT_TLS1_3_NEW_SESSION_TICKET,
                                      NULL, 0)) {
            /* SSLfatal() already called */
            goto err;
        }
        /*
         * Increment both |sent_tickets| and |next_ticket_nonce|. |sent_tickets|
         * gets reset to 0 if we send more tickets following a post-handshake
         * auth, but |next_ticket_nonce| does not.
         */
        s->sent_tickets++;
        s->next_ticket_nonce++;
        FUNC13(s, SSL_SESS_CACHE_SERVER);
    }

    return 1;
 err:
    return 0;
}