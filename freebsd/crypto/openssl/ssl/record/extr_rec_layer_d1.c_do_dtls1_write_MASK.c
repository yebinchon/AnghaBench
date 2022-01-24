#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_7__ ;
typedef  struct TYPE_38__   TYPE_6__ ;
typedef  struct TYPE_37__   TYPE_5__ ;
typedef  struct TYPE_36__   TYPE_4__ ;
typedef  struct TYPE_35__   TYPE_3__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_1__ ;

/* Type definitions */
struct TYPE_37__ {size_t wpend_tot; unsigned char const* wpend_buf; int wpend_type; size_t wpend_ret; int /*<<< orphan*/ * write_sequence; TYPE_4__* d; int /*<<< orphan*/ * wbuf; } ;
struct TYPE_39__ {scalar_t__ max_proto_version; int version; TYPE_5__ rlayer; int /*<<< orphan*/  msg_callback_arg; int /*<<< orphan*/  (* msg_callback ) (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,TYPE_7__*,int /*<<< orphan*/ ) ;TYPE_3__* method; int /*<<< orphan*/ * compress; int /*<<< orphan*/ * enc_write_ctx; int /*<<< orphan*/  write_hash; int /*<<< orphan*/ * session; TYPE_1__* s3; } ;
struct TYPE_38__ {size_t length; } ;
struct TYPE_36__ {size_t w_epoch; } ;
struct TYPE_35__ {int (* ssl_dispatch_alert ) (TYPE_7__*) ;scalar_t__ version; TYPE_2__* ssl3_enc; } ;
struct TYPE_34__ {int (* enc ) (TYPE_7__*,TYPE_6__*,int,int) ;int /*<<< orphan*/  (* mac ) (TYPE_7__*,TYPE_6__*,unsigned char*,int) ;} ;
struct TYPE_33__ {scalar_t__ alert_dispatch; } ;
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  TYPE_6__ SSL3_RECORD ;
typedef  int /*<<< orphan*/  SSL3_BUFFER ;
typedef  TYPE_7__ SSL ;

/* Variables and functions */
 scalar_t__ DTLS1_BAD_VER ; 
 int DTLS1_RT_HEADER_LENGTH ; 
 int DTLS1_VERSION ; 
 scalar_t__ DTLS_ANY_VERSION ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int EVP_CCM_TLS_EXPLICIT_IV_LEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int EVP_CIPH_CBC_MODE ; 
 int EVP_CIPH_CCM_MODE ; 
 int EVP_CIPH_GCM_MODE ; 
 int EVP_GCM_TLS_EXPLICIT_IV_LEN ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int) ; 
 unsigned char* FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_6__*) ; 
 size_t FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  SSL3_RT_HEADER ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_DO_DTLS1_WRITE ; 
 int /*<<< orphan*/  SSL_R_COMPRESSION_FAILURE ; 
 int /*<<< orphan*/  SSL_R_EXCEEDS_MAX_FRAGMENT_SIZE ; 
 scalar_t__ FUNC17 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC22 (size_t,unsigned char*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_7__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (TYPE_7__*,int,unsigned char const*,size_t,size_t*) ; 
 size_t FUNC26 (TYPE_7__*) ; 
 int FUNC27 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_7__*,TYPE_6__*,unsigned char*,int) ; 
 int FUNC29 (TYPE_7__*,TYPE_6__*,int,int) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_7__*,TYPE_6__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC31 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,TYPE_7__*,int /*<<< orphan*/ ) ; 

int FUNC32(SSL *s, int type, const unsigned char *buf,
                   size_t len, int create_empty_fragment, size_t *written)
{
    unsigned char *p, *pseq;
    int i, mac_size, clear = 0;
    size_t prefix_len = 0;
    int eivlen;
    SSL3_RECORD wr;
    SSL3_BUFFER *wb;
    SSL_SESSION *sess;

    wb = &s->rlayer.wbuf[0];

    /*
     * first check if there is a SSL3_BUFFER still being written out.  This
     * will happen with non blocking IO
     */
    if (!FUNC20(FUNC5(wb) == 0)) {
        FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_DO_DTLS1_WRITE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    /* If we have an alert to send, lets send it */
    if (s->s3->alert_dispatch) {
        i = s->method->ssl_dispatch_alert(s);
        if (i <= 0)
            return i;
        /* if it went, fall through and send more stuff */
    }

    if (len == 0 && !create_empty_fragment)
        return 0;

    if (len > FUNC26(s)) {
        FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_DO_DTLS1_WRITE,
                 SSL_R_EXCEEDS_MAX_FRAGMENT_SIZE);
        return 0;
    }

    sess = s->session;

    if ((sess == NULL) ||
        (s->enc_write_ctx == NULL) || (FUNC2(s->write_hash) == NULL))
        clear = 1;

    if (clear)
        mac_size = 0;
    else {
        mac_size = FUNC3(s->write_hash);
        if (mac_size < 0) {
            FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_DO_DTLS1_WRITE,
                     SSL_R_EXCEEDS_MAX_FRAGMENT_SIZE);
            return -1;
        }
    }

    p = FUNC4(wb) + prefix_len;

    /* write the header */

    *(p++) = type & 0xff;
    FUNC16(&wr, type);
    /*
     * Special case: for hello verify request, client version 1.0 and we
     * haven't decided which version to use yet send back using version 1.0
     * header: otherwise some clients will ignore it.
     */
    if (s->method->version == DTLS_ANY_VERSION &&
        s->max_proto_version != DTLS1_BAD_VER) {
        *(p++) = DTLS1_VERSION >> 8;
        *(p++) = DTLS1_VERSION & 0xff;
    } else {
        *(p++) = s->version >> 8;
        *(p++) = s->version & 0xff;
    }

    /* field where we are to write out packet epoch, seq num and len */
    pseq = p;
    p += 10;

    /* Explicit IV length, block ciphers appropriate version flag */
    if (s->enc_write_ctx) {
        int mode = FUNC1(s->enc_write_ctx);
        if (mode == EVP_CIPH_CBC_MODE) {
            eivlen = FUNC0(s->enc_write_ctx);
            if (eivlen <= 1)
                eivlen = 0;
        }
        /* Need explicit part of IV for GCM mode */
        else if (mode == EVP_CIPH_GCM_MODE)
            eivlen = EVP_GCM_TLS_EXPLICIT_IV_LEN;
        else if (mode == EVP_CIPH_CCM_MODE)
            eivlen = EVP_CCM_TLS_EXPLICIT_IV_LEN;
        else
            eivlen = 0;
    } else
        eivlen = 0;

    /* lets setup the record stuff. */
    FUNC13(&wr, p + eivlen); /* make room for IV in case of CBC */
    FUNC15(&wr, len);
    FUNC14(&wr, (unsigned char *)buf);

    /*
     * we now 'read' from wr.input, wr.length bytes into wr.data
     */

    /* first we compress */
    if (s->compress != NULL) {
        if (!FUNC23(s, &wr)) {
            FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_DO_DTLS1_WRITE,
                     SSL_R_COMPRESSION_FAILURE);
            return -1;
        }
    } else {
        FUNC19(FUNC9(&wr), FUNC10(&wr),
               FUNC11(&wr));
        FUNC12(&wr);
    }

    /*
     * we should still have the output to wr.data and the input from
     * wr.input.  Length should be wr.length. wr.data still points in the
     * wb->buf
     */

    if (!FUNC17(s) && mac_size != 0) {
        if (!s->method->ssl3_enc->mac(s, &wr,
                                      &(p[FUNC11(&wr) + eivlen]),
                                      1)) {
            FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_DO_DTLS1_WRITE,
                     ERR_R_INTERNAL_ERROR);
            return -1;
        }
        FUNC8(&wr, mac_size);
    }

    /* this is true regardless of mac size */
    FUNC13(&wr, p);
    FUNC12(&wr);

    if (eivlen)
        FUNC8(&wr, eivlen);

    if (s->method->ssl3_enc->enc(s, &wr, 1, 1) < 1) {
        if (!FUNC21(s)) {
            FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_DO_DTLS1_WRITE,
                     ERR_R_INTERNAL_ERROR);
        }
        return -1;
    }

    if (FUNC17(s) && mac_size != 0) {
        if (!s->method->ssl3_enc->mac(s, &wr,
                                      &(p[FUNC11(&wr)]), 1)) {
            FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_DO_DTLS1_WRITE,
                     ERR_R_INTERNAL_ERROR);
            return -1;
        }
        FUNC8(&wr, mac_size);
    }

    /* record length after mac and block padding */

    /* there's only one epoch between handshake and app data */

    FUNC22(s->rlayer.d->w_epoch, pseq);

    FUNC19(pseq, &(s->rlayer.write_sequence[2]), 6);
    pseq += 6;
    FUNC22(FUNC11(&wr), pseq);

    if (s->msg_callback)
        s->msg_callback(1, 0, SSL3_RT_HEADER, pseq - DTLS1_RT_HEADER_LENGTH,
                        DTLS1_RT_HEADER_LENGTH, s, s->msg_callback_arg);

    /*
     * we should now have wr.data pointing to the encrypted data, which is
     * wr->length long
     */
    FUNC16(&wr, type); /* not needed but helps for debugging */
    FUNC8(&wr, DTLS1_RT_HEADER_LENGTH);

    FUNC24(&(s->rlayer.write_sequence[0]));

    if (create_empty_fragment) {
        /*
         * we are in a recursive call; just return the length, don't write
         * out anything here
         */
        *written = wr.length;
        return 1;
    }

    /* now let's set up wb */
    FUNC6(wb, prefix_len + FUNC11(&wr));
    FUNC7(wb, 0);

    /*
     * memorize arguments so that ssl3_write_pending can detect bad write
     * retries later
     */
    s->rlayer.wpend_tot = len;
    s->rlayer.wpend_buf = buf;
    s->rlayer.wpend_type = type;
    s->rlayer.wpend_ret = len;

    /* we now just need to write the buffer. Calls SSLfatal() as required. */
    return FUNC25(s, type, buf, len, written);
}