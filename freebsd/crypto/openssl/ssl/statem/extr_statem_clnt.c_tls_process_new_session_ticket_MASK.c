#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nonce_label ;
struct TYPE_20__ {TYPE_2__* session; int /*<<< orphan*/  resumption_master_secret; TYPE_15__* session_ctx; } ;
struct TYPE_18__ {unsigned int ticklen; unsigned long tick_lifetime_hint; unsigned long tick_age_add; int /*<<< orphan*/ * tick; } ;
struct TYPE_19__ {unsigned int session_id_length; long time; size_t master_key_length; int /*<<< orphan*/  master_key; scalar_t__ not_resumable; int /*<<< orphan*/  session_id; TYPE_1__ ext; } ;
struct TYPE_17__ {int session_cache_mode; } ;
typedef  TYPE_2__ SSL_SESSION ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  RAW_EXTENSION ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  MSG_PROCESS_RETURN ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  MSG_PROCESS_CONTINUE_READING ; 
 int /*<<< orphan*/  MSG_PROCESS_ERROR ; 
 int /*<<< orphan*/  MSG_PROCESS_FINISHED_READING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC13 (TYPE_15__*,TYPE_2__*) ; 
 int /*<<< orphan*/  SSL_EXT_TLS1_3_NEW_SESSION_TICKET ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_NEW_SESSION_TICKET ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int SSL_SESS_CACHE_CLIENT ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/ * FUNC18 (TYPE_3__*) ; 
 TYPE_2__* FUNC19 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,unsigned char const*,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

MSG_PROCESS_RETURN FUNC25(SSL *s, PACKET *pkt)
{
    unsigned int ticklen;
    unsigned long ticket_lifetime_hint, age_add = 0;
    unsigned int sess_len;
    RAW_EXTENSION *exts = NULL;
    PACKET nonce;

    FUNC11(&nonce);

    if (!FUNC10(pkt, &ticket_lifetime_hint)
        || (FUNC14(s)
            && (!FUNC10(pkt, &age_add)
                || !FUNC8(pkt, &nonce)))
        || !FUNC9(pkt, &ticklen)
        || (FUNC14(s) ? (ticklen == 0 || FUNC12(pkt) < ticklen)
                            : FUNC12(pkt) != ticklen)) {
        FUNC16(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_NEW_SESSION_TICKET,
                 SSL_R_LENGTH_MISMATCH);
        goto err;
    }

    /*
     * Server is allowed to change its mind (in <=TLSv1.2) and send an empty
     * ticket. We already checked this TLSv1.3 case above, so it should never
     * be 0 here in that instance
     */
    if (ticklen == 0)
        return MSG_PROCESS_CONTINUE_READING;

    /*
     * Sessions must be immutable once they go into the session cache. Otherwise
     * we can get multi-thread problems. Therefore we don't "update" sessions,
     * we replace them with a duplicate. In TLSv1.3 we need to do this every
     * time a NewSessionTicket arrives because those messages arrive
     * post-handshake and the session may have already gone into the session
     * cache.
     */
    if (FUNC14(s) || s->session->session_id_length > 0) {
        SSL_SESSION *new_sess;

        /*
         * We reused an existing session, so we need to replace it with a new
         * one
         */
        if ((new_sess = FUNC19(s->session, 0)) == 0) {
            FUNC16(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PROCESS_NEW_SESSION_TICKET,
                     ERR_R_MALLOC_FAILURE);
            goto err;
        }

        if ((s->session_ctx->session_cache_mode & SSL_SESS_CACHE_CLIENT) != 0
                && !FUNC14(s)) {
            /*
             * In TLSv1.2 and below the arrival of a new tickets signals that
             * any old ticket we were using is now out of date, so we remove the
             * old session from the cache. We carry on if this fails
             */
            FUNC13(s->session_ctx, s->session);
        }

        FUNC15(s->session);
        s->session = new_sess;
    }

    /*
     * Technically the cast to long here is not guaranteed by the C standard -
     * but we use it elsewhere, so this should be ok.
     */
    s->session->time = (long)FUNC21(NULL);

    FUNC3(s->session->ext.tick);
    s->session->ext.tick = NULL;
    s->session->ext.ticklen = 0;

    s->session->ext.tick = FUNC4(ticklen);
    if (s->session->ext.tick == NULL) {
        FUNC16(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_NEW_SESSION_TICKET,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if (!FUNC6(pkt, s->session->ext.tick, ticklen)) {
        FUNC16(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_NEW_SESSION_TICKET,
                 SSL_R_LENGTH_MISMATCH);
        goto err;
    }

    s->session->ext.tick_lifetime_hint = ticket_lifetime_hint;
    s->session->ext.tick_age_add = age_add;
    s->session->ext.ticklen = ticklen;

    if (FUNC14(s)) {
        PACKET extpkt;

        if (!FUNC5(pkt, &extpkt)
                || FUNC12(pkt) != 0) {
            FUNC16(s, SSL_AD_DECODE_ERROR,
                     SSL_F_TLS_PROCESS_NEW_SESSION_TICKET,
                     SSL_R_LENGTH_MISMATCH);
            goto err;
        }

        if (!FUNC23(s, &extpkt,
                                    SSL_EXT_TLS1_3_NEW_SESSION_TICKET, &exts,
                                    NULL, 1)
                || !FUNC24(s,
                                             SSL_EXT_TLS1_3_NEW_SESSION_TICKET,
                                             exts, NULL, 0, 1)) {
            /* SSLfatal() already called */
            goto err;
        }
    }

    /*
     * There are two ways to detect a resumed ticket session. One is to set
     * an appropriate session ID and then the server must return a match in
     * ServerHello. This allows the normal client session ID matching to work
     * and we know much earlier that the ticket has been accepted. The
     * other way is to set zero length session ID when the ticket is
     * presented and rely on the handshake to determine session resumption.
     * We choose the former approach because this fits in with assumptions
     * elsewhere in OpenSSL. The session ID is set to the SHA256 (or SHA1 is
     * SHA256 is disabled) hash of the ticket.
     */
    /*
     * TODO(size_t): we use sess_len here because EVP_Digest expects an int
     * but s->session->session_id_length is a size_t
     */
    if (!FUNC0(s->session->ext.tick, ticklen,
                    s->session->session_id, &sess_len,
                    FUNC2(), NULL)) {
        FUNC16(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_NEW_SESSION_TICKET,
                 ERR_R_EVP_LIB);
        goto err;
    }
    s->session->session_id_length = sess_len;
    s->session->not_resumable = 0;

    /* This is a standalone message in TLSv1.3, so there is no more to read */
    if (FUNC14(s)) {
        const EVP_MD *md = FUNC18(s);
        int hashleni = FUNC1(md);
        size_t hashlen;
        static const unsigned char nonce_label[] = "resumption";

        /* Ensure cast to size_t is safe */
        if (!FUNC17(hashleni >= 0)) {
            FUNC16(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PROCESS_NEW_SESSION_TICKET,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        hashlen = (size_t)hashleni;

        if (!FUNC22(s, md, s->resumption_master_secret,
                               nonce_label,
                               sizeof(nonce_label) - 1,
                               FUNC7(&nonce),
                               FUNC12(&nonce),
                               s->session->master_key,
                               hashlen, 1)) {
            /* SSLfatal() already called */
            goto err;
        }
        s->session->master_key_length = hashlen;

        FUNC3(exts);
        FUNC20(s, SSL_SESS_CACHE_CLIENT);
        return MSG_PROCESS_FINISHED_READING;
    }

    return MSG_PROCESS_CONTINUE_READING;
 err:
    FUNC3(exts);
    return MSG_PROCESS_ERROR;
}