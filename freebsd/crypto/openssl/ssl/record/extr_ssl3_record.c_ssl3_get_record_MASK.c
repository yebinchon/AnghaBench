#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {scalar_t__ enc_read_state; } ;
struct TYPE_33__ {size_t max_pipelines; scalar_t__ hello_retry_request; int version; scalar_t__ early_data_state; int /*<<< orphan*/  rlayer; int /*<<< orphan*/ * session; int /*<<< orphan*/  msg_callback_arg; int /*<<< orphan*/  (* msg_callback ) (int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ,scalar_t__*,int,TYPE_5__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * enc_read_ctx; int /*<<< orphan*/ * expand; TYPE_3__* method; scalar_t__ read_hash; TYPE_1__ statem; int /*<<< orphan*/  write_hash; int /*<<< orphan*/  enc_write_ctx; int /*<<< orphan*/  first_packet; scalar_t__ server; } ;
struct TYPE_32__ {scalar_t__ type; unsigned int rec_version; size_t length; unsigned char* input; int* data; size_t orig_len; int read; scalar_t__ off; } ;
struct TYPE_31__ {TYPE_2__* ssl3_enc; } ;
struct TYPE_30__ {int (* mac ) (TYPE_5__*,TYPE_4__*,unsigned char*,int /*<<< orphan*/ ) ;int (* enc ) (TYPE_5__*,TYPE_4__*,size_t,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  TYPE_4__ SSL3_RECORD ;
typedef  int /*<<< orphan*/  SSL3_BUFFER ;
typedef  TYPE_5__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  EARLY_DATA_CIPHERTEXT_OVERHEAD ; 
 scalar_t__ ENC_READ_STATE_ALLOW_PLAIN_ALERTS ; 
 int /*<<< orphan*/  ERR_LIB_EVP ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ EVP_CIPH_CBC_MODE ; 
 int EVP_CIPH_FLAG_PIPELINE ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 void* FUNC5 (scalar_t__) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_EMPTY_RECORDS ; 
 size_t MIN_SSL2_RECORD_LEN ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC13 (int /*<<< orphan*/ *) ; 
 size_t FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned int SSL2_MT_CLIENT_HELLO ; 
 size_t SSL2_RT_HEADER_LENGTH ; 
 unsigned int SSL2_VERSION ; 
 size_t FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ SSL3_RT_ALERT ; 
 scalar_t__ SSL3_RT_APPLICATION_DATA ; 
 scalar_t__ SSL3_RT_CHANGE_CIPHER_SPEC ; 
 scalar_t__ SSL3_RT_HANDSHAKE ; 
 int /*<<< orphan*/  SSL3_RT_HEADER ; 
 size_t SSL3_RT_HEADER_LENGTH ; 
 int /*<<< orphan*/  SSL3_RT_INNER_CONTENT_TYPE ; 
 size_t SSL3_RT_MAX_COMPRESSED_LENGTH ; 
 scalar_t__ SSL3_RT_MAX_COMPRESSED_OVERHEAD ; 
 size_t SSL3_RT_MAX_ENCRYPTED_LENGTH ; 
 size_t SSL3_RT_MAX_PLAIN_LENGTH ; 
 size_t SSL3_RT_MAX_TLS13_ENCRYPTED_LENGTH ; 
 unsigned int SSL3_VERSION_MAJOR ; 
 int /*<<< orphan*/  SSL_AD_BAD_RECORD_MAC ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_DECOMPRESSION_FAILURE ; 
 int /*<<< orphan*/  SSL_AD_DECRYPTION_FAILED ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_AD_NO_ALERT ; 
 int /*<<< orphan*/  SSL_AD_PROTOCOL_VERSION ; 
 int /*<<< orphan*/  SSL_AD_RECORD_OVERFLOW ; 
 int /*<<< orphan*/  SSL_AD_UNEXPECTED_MESSAGE ; 
 scalar_t__ SSL_EARLY_DATA_READING ; 
 int /*<<< orphan*/  SSL_F_SSL3_GET_RECORD ; 
 scalar_t__ SSL_HRR_NONE ; 
 scalar_t__ SSL_HRR_PENDING ; 
 scalar_t__ FUNC26 (TYPE_5__*) ; 
 scalar_t__ FUNC27 (TYPE_5__*) ; 
 scalar_t__ FUNC28 (TYPE_5__*) ; 
 int /*<<< orphan*/  SSL_R_BAD_DECOMPRESSION ; 
 int /*<<< orphan*/  SSL_R_BAD_LENGTH ; 
 int /*<<< orphan*/  SSL_R_BAD_RECORD_TYPE ; 
 int /*<<< orphan*/  SSL_R_BLOCK_CIPHER_PAD_IS_WRONG ; 
 int /*<<< orphan*/  SSL_R_COMPRESSED_LENGTH_TOO_LONG ; 
 int /*<<< orphan*/  SSL_R_DATA_LENGTH_TOO_LONG ; 
 int /*<<< orphan*/  SSL_R_DECRYPTION_FAILED_OR_BAD_RECORD_MAC ; 
 int /*<<< orphan*/  SSL_R_ENCRYPTED_LENGTH_TOO_LONG ; 
 int /*<<< orphan*/  SSL_R_HTTPS_PROXY_REQUEST ; 
 int /*<<< orphan*/  SSL_R_HTTP_REQUEST ; 
 int /*<<< orphan*/  SSL_R_INVALID_CCS_MESSAGE ; 
 int /*<<< orphan*/  SSL_R_LENGTH_TOO_SHORT ; 
 int /*<<< orphan*/  SSL_R_PACKET_LENGTH_TOO_LONG ; 
 int /*<<< orphan*/  SSL_R_RECORD_TOO_SMALL ; 
 int /*<<< orphan*/  SSL_R_UNEXPECTED_CCS_MESSAGE ; 
 int /*<<< orphan*/  SSL_R_WRONG_VERSION_NUMBER ; 
 scalar_t__ SSL_ST_READ_BODY ; 
 scalar_t__ SSL_ST_READ_HEADER ; 
 scalar_t__ FUNC29 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int TLS1_2_VERSION ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_5__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 scalar_t__ FUNC34 (TYPE_5__*) ; 
 scalar_t__ FUNC35 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC36 (char*,...) ; 
 int /*<<< orphan*/  FUNC37 (unsigned char*,TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_5__*,TYPE_4__*) ; 
 int FUNC39 (TYPE_5__*,size_t,size_t,int,int,size_t*) ; 
 scalar_t__ FUNC40 (TYPE_5__*) ; 
 scalar_t__ FUNC41 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ,unsigned char*,int,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC43 (TYPE_5__*,TYPE_4__*,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC44 (TYPE_5__*,TYPE_4__*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC45 (TYPE_5__*,TYPE_4__*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ,scalar_t__*,int,TYPE_5__*,int /*<<< orphan*/ ) ; 

int FUNC47(SSL *s)
{
    int enc_err, rret;
    int i;
    size_t more, n;
    SSL3_RECORD *rr, *thisrr;
    SSL3_BUFFER *rbuf;
    SSL_SESSION *sess;
    unsigned char *p;
    unsigned char md[EVP_MAX_MD_SIZE];
    unsigned int version;
    size_t mac_size;
    int imac_size;
    size_t num_recs = 0, max_recs, j;
    PACKET pkt, sslv2pkt;
    size_t first_rec_len;

    rr = FUNC16(&s->rlayer);
    rbuf = FUNC15(&s->rlayer);
    max_recs = s->max_pipelines;
    if (max_recs == 0)
        max_recs = 1;
    sess = s->session;

    do {
        thisrr = &rr[num_recs];

        /* check if we have the header */
        if ((FUNC17(&s->rlayer) != SSL_ST_READ_BODY) ||
            (FUNC14(&s->rlayer)
             < SSL3_RT_HEADER_LENGTH)) {
            size_t sslv2len;
            unsigned int type;

            rret = FUNC39(s, SSL3_RT_HEADER_LENGTH,
                               FUNC25(rbuf), 0,
                               num_recs == 0 ? 1 : 0, &n);
            if (rret <= 0)
                return rret;     /* error or non-blocking */
            FUNC24(&s->rlayer, SSL_ST_READ_BODY);

            p = FUNC13(&s->rlayer);
            if (!FUNC7(&pkt, FUNC13(&s->rlayer),
                                 FUNC14(&s->rlayer))) {
                FUNC30(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_GET_RECORD,
                         ERR_R_INTERNAL_ERROR);
                return -1;
            }
            sslv2pkt = pkt;
            if (!FUNC10(&sslv2pkt, &sslv2len)
                    || !FUNC8(&sslv2pkt, &type)) {
                FUNC30(s, SSL_AD_DECODE_ERROR, SSL_F_SSL3_GET_RECORD,
                         ERR_R_INTERNAL_ERROR);
                return -1;
            }
            /*
             * The first record received by the server may be a V2ClientHello.
             */
            if (s->server && FUNC19(&s->rlayer)
                    && (sslv2len & 0x8000) != 0
                    && (type == SSL2_MT_CLIENT_HELLO)) {
                /*
                 *  SSLv2 style record
                 *
                 * |num_recs| here will actually always be 0 because
                 * |num_recs > 0| only ever occurs when we are processing
                 * multiple app data records - which we know isn't the case here
                 * because it is an SSLv2ClientHello. We keep it using
                 * |num_recs| for the sake of consistency
                 */
                thisrr->type = SSL3_RT_HANDSHAKE;
                thisrr->rec_version = SSL2_VERSION;

                thisrr->length = sslv2len & 0x7fff;

                if (thisrr->length > FUNC25(rbuf)
                    - SSL2_RT_HEADER_LENGTH) {
                    FUNC30(s, SSL_AD_RECORD_OVERFLOW, SSL_F_SSL3_GET_RECORD,
                             SSL_R_PACKET_LENGTH_TOO_LONG);
                    return -1;
                }

                if (thisrr->length < MIN_SSL2_RECORD_LEN) {
                    FUNC30(s, SSL_AD_DECODE_ERROR, SSL_F_SSL3_GET_RECORD,
                             SSL_R_LENGTH_TOO_SHORT);
                    return -1;
                }
            } else {
                /* SSLv3+ style record */
                if (s->msg_callback)
                    s->msg_callback(0, 0, SSL3_RT_HEADER, p, 5, s,
                                    s->msg_callback_arg);

                /* Pull apart the header into the SSL3_RECORD */
                if (!FUNC8(&pkt, &type)
                        || !FUNC9(&pkt, &version)
                        || !FUNC10(&pkt, &thisrr->length)) {
                    FUNC30(s, SSL_AD_DECODE_ERROR, SSL_F_SSL3_GET_RECORD,
                             ERR_R_INTERNAL_ERROR);
                    return -1;
                }
                thisrr->type = type;
                thisrr->rec_version = version;

                /*
                 * Lets check version. In TLSv1.3 we only check this field
                 * when encryption is occurring (see later check). For the
                 * ServerHello after an HRR we haven't actually selected TLSv1.3
                 * yet, but we still treat it as TLSv1.3, so we must check for
                 * that explicitly
                 */
                if (!s->first_packet && !FUNC27(s)
                        && s->hello_retry_request != SSL_HRR_PENDING
                        && version != (unsigned int)s->version) {
                    if ((s->version & 0xFF00) == (version & 0xFF00)
                        && !s->enc_write_ctx && !s->write_hash) {
                        if (thisrr->type == SSL3_RT_ALERT) {
                            /*
                             * The record is using an incorrect version number,
                             * but what we've got appears to be an alert. We
                             * haven't read the body yet to check whether its a
                             * fatal or not - but chances are it is. We probably
                             * shouldn't send a fatal alert back. We'll just
                             * end.
                             */
                            FUNC30(s, SSL_AD_NO_ALERT, SSL_F_SSL3_GET_RECORD,
                                     SSL_R_WRONG_VERSION_NUMBER);
                            return -1;
                        }
                        /*
                         * Send back error using their minor version number :-)
                         */
                        s->version = (unsigned short)version;
                    }
                    FUNC30(s, SSL_AD_PROTOCOL_VERSION, SSL_F_SSL3_GET_RECORD,
                             SSL_R_WRONG_VERSION_NUMBER);
                    return -1;
                }

                if ((version >> 8) != SSL3_VERSION_MAJOR) {
                    if (FUNC19(&s->rlayer)) {
                        /* Go back to start of packet, look at the five bytes
                         * that we have. */
                        p = FUNC13(&s->rlayer);
                        if (FUNC41((char *)p, "GET ", 4) == 0 ||
                            FUNC41((char *)p, "POST ", 5) == 0 ||
                            FUNC41((char *)p, "HEAD ", 5) == 0 ||
                            FUNC41((char *)p, "PUT ", 4) == 0) {
                            FUNC30(s, SSL_AD_NO_ALERT, SSL_F_SSL3_GET_RECORD,
                                     SSL_R_HTTP_REQUEST);
                            return -1;
                        } else if (FUNC41((char *)p, "CONNE", 5) == 0) {
                            FUNC30(s, SSL_AD_NO_ALERT, SSL_F_SSL3_GET_RECORD,
                                     SSL_R_HTTPS_PROXY_REQUEST);
                            return -1;
                        }

                        /* Doesn't look like TLS - don't send an alert */
                        FUNC30(s, SSL_AD_NO_ALERT, SSL_F_SSL3_GET_RECORD,
                                 SSL_R_WRONG_VERSION_NUMBER);
                        return -1;
                    } else {
                        FUNC30(s, SSL_AD_PROTOCOL_VERSION,
                                 SSL_F_SSL3_GET_RECORD,
                                 SSL_R_WRONG_VERSION_NUMBER);
                        return -1;
                    }
                }

                if (FUNC27(s) && s->enc_read_ctx != NULL) {
                    if (thisrr->type != SSL3_RT_APPLICATION_DATA
                            && (thisrr->type != SSL3_RT_CHANGE_CIPHER_SPEC
                                || !FUNC26(s))
                            && (thisrr->type != SSL3_RT_ALERT
                                || s->statem.enc_read_state
                                   != ENC_READ_STATE_ALLOW_PLAIN_ALERTS)) {
                        FUNC30(s, SSL_AD_UNEXPECTED_MESSAGE,
                                 SSL_F_SSL3_GET_RECORD, SSL_R_BAD_RECORD_TYPE);
                        return -1;
                    }
                    if (thisrr->rec_version != TLS1_2_VERSION) {
                        FUNC30(s, SSL_AD_DECODE_ERROR, SSL_F_SSL3_GET_RECORD,
                                 SSL_R_WRONG_VERSION_NUMBER);
                        return -1;
                    }
                }

                if (thisrr->length >
                    FUNC25(rbuf) - SSL3_RT_HEADER_LENGTH) {
                    FUNC30(s, SSL_AD_RECORD_OVERFLOW, SSL_F_SSL3_GET_RECORD,
                             SSL_R_PACKET_LENGTH_TOO_LONG);
                    return -1;
                }
            }

            /* now s->rlayer.rstate == SSL_ST_READ_BODY */
        }

        if (FUNC27(s)) {
            if (thisrr->length > SSL3_RT_MAX_TLS13_ENCRYPTED_LENGTH) {
                FUNC30(s, SSL_AD_RECORD_OVERFLOW, SSL_F_SSL3_GET_RECORD,
                         SSL_R_ENCRYPTED_LENGTH_TOO_LONG);
                return -1;
            }
        } else {
            size_t len = SSL3_RT_MAX_ENCRYPTED_LENGTH;

#ifndef OPENSSL_NO_COMP
            /*
             * If OPENSSL_NO_COMP is defined then SSL3_RT_MAX_ENCRYPTED_LENGTH
             * does not include the compression overhead anyway.
             */
            if (s->expand == NULL)
                len -= SSL3_RT_MAX_COMPRESSED_OVERHEAD;
#endif

            if (thisrr->length > len) {
                FUNC30(s, SSL_AD_RECORD_OVERFLOW, SSL_F_SSL3_GET_RECORD,
                         SSL_R_ENCRYPTED_LENGTH_TOO_LONG);
                return -1;
            }
        }

        /*
         * s->rlayer.rstate == SSL_ST_READ_BODY, get and decode the data.
         * Calculate how much more data we need to read for the rest of the
         * record
         */
        if (thisrr->rec_version == SSL2_VERSION) {
            more = thisrr->length + SSL2_RT_HEADER_LENGTH
                - SSL3_RT_HEADER_LENGTH;
        } else {
            more = thisrr->length;
        }
        if (more > 0) {
            /* now s->packet_length == SSL3_RT_HEADER_LENGTH */

            rret = FUNC39(s, more, more, 1, 0, &n);
            if (rret <= 0)
                return rret;     /* error or non-blocking io */
        }

        /* set state for later operations */
        FUNC24(&s->rlayer, SSL_ST_READ_HEADER);

        /*
         * At this point, s->packet_length == SSL3_RT_HEADER_LENGTH
         * + thisrr->length, or s->packet_length == SSL2_RT_HEADER_LENGTH
         * + thisrr->length and we have that many bytes in s->packet
         */
        if (thisrr->rec_version == SSL2_VERSION) {
            thisrr->input =
                &(FUNC13(&s->rlayer)[SSL2_RT_HEADER_LENGTH]);
        } else {
            thisrr->input =
                &(FUNC13(&s->rlayer)[SSL3_RT_HEADER_LENGTH]);
        }

        /*
         * ok, we can now read from 's->packet' data into 'thisrr' thisrr->input
         * points at thisrr->length bytes, which need to be copied into
         * thisrr->data by either the decryption or by the decompression When
         * the data is 'copied' into the thisrr->data buffer, thisrr->input will
         * be pointed at the new buffer
         */

        /*
         * We now have - encrypted [ MAC [ compressed [ plain ] ] ]
         * thisrr->length bytes of encrypted compressed stuff.
         */

        /* decrypt in place in 'thisrr->input' */
        thisrr->data = thisrr->input;
        thisrr->orig_len = thisrr->length;

        /* Mark this record as not read by upper layers yet */
        thisrr->read = 0;

        num_recs++;

        /* we have pulled in a full packet so zero things */
        FUNC21(&s->rlayer);
        FUNC11(&s->rlayer);
    } while (num_recs < max_recs
             && thisrr->type == SSL3_RT_APPLICATION_DATA
             && FUNC29(s)
             && s->enc_read_ctx != NULL
             && (FUNC3(FUNC1(s->enc_read_ctx))
                 & EVP_CIPH_FLAG_PIPELINE)
             && FUNC40(s));

    if (num_recs == 1
            && thisrr->type == SSL3_RT_CHANGE_CIPHER_SPEC
            && (FUNC27(s) || s->hello_retry_request != SSL_HRR_NONE)
            && FUNC26(s)) {
        /*
         * CCS messages must be exactly 1 byte long, containing the value 0x01
         */
        if (thisrr->length != 1 || thisrr->data[0] != 0x01) {
            FUNC30(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_SSL3_GET_RECORD,
                     SSL_R_INVALID_CCS_MESSAGE);
            return -1;
        }
        /*
         * CCS messages are ignored in TLSv1.3. We treat it like an empty
         * handshake record
         */
        thisrr->type = SSL3_RT_HANDSHAKE;
        FUNC18(&s->rlayer);
        if (FUNC12(&s->rlayer)
            > MAX_EMPTY_RECORDS) {
            FUNC30(s, SSL_AD_UNEXPECTED_MESSAGE, SSL_F_SSL3_GET_RECORD,
                     SSL_R_UNEXPECTED_CCS_MESSAGE);
            return -1;
        }
        thisrr->read = 1;
        FUNC23(&s->rlayer, 1);

        return 1;
    }

    /*
     * If in encrypt-then-mac mode calculate mac from encrypted record. All
     * the details below are public so no timing details can leak.
     */
    if (FUNC28(s) && s->read_hash) {
        unsigned char *mac;
        /* TODO(size_t): convert this to do size_t properly */
        imac_size = FUNC5(s->read_hash);
        if (!FUNC33(imac_size >= 0 && imac_size <= EVP_MAX_MD_SIZE)) {
                FUNC30(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_GET_RECORD,
                         ERR_LIB_EVP);
                return -1;
        }
        mac_size = (size_t)imac_size;
        for (j = 0; j < num_recs; j++) {
            thisrr = &rr[j];

            if (thisrr->length < mac_size) {
                FUNC30(s, SSL_AD_DECODE_ERROR, SSL_F_SSL3_GET_RECORD,
                         SSL_R_LENGTH_TOO_SHORT);
                return -1;
            }
            thisrr->length -= mac_size;
            mac = thisrr->data + thisrr->length;
            i = s->method->ssl3_enc->mac(s, thisrr, md, 0 /* not send */ );
            if (i == 0 || FUNC0(md, mac, mac_size) != 0) {
                FUNC30(s, SSL_AD_BAD_RECORD_MAC, SSL_F_SSL3_GET_RECORD,
                       SSL_R_DECRYPTION_FAILED_OR_BAD_RECORD_MAC);
                return -1;
            }
        }
    }

    first_rec_len = rr[0].length;

    enc_err = s->method->ssl3_enc->enc(s, rr, num_recs, 0);

    /*-
     * enc_err is:
     *    0: (in non-constant time) if the record is publicly invalid.
     *    1: if the padding is valid
     *    -1: if the padding is invalid
     */
    if (enc_err == 0) {
        if (FUNC34(s)) {
            /* SSLfatal() already got called */
            return -1;
        }
        if (num_recs == 1 && FUNC35(s)) {
            /*
             * Valid early_data that we cannot decrypt might fail here as
             * publicly invalid. We treat it like an empty record.
             */

            thisrr = &rr[0];

            if (!FUNC32(s, thisrr->length,
                                     EARLY_DATA_CIPHERTEXT_OVERHEAD, 0)) {
                /* SSLfatal() already called */
                return -1;
            }

            thisrr->length = 0;
            thisrr->read = 1;
            FUNC23(&s->rlayer, 1);
            FUNC22(&s->rlayer);
            return 1;
        }
        FUNC30(s, SSL_AD_DECRYPTION_FAILED, SSL_F_SSL3_GET_RECORD,
                 SSL_R_BLOCK_CIPHER_PAD_IS_WRONG);
        return -1;
    }
#ifdef SSL_DEBUG
    printf("dec %lu\n", (unsigned long)rr[0].length);
    {
        size_t z;
        for (z = 0; z < rr[0].length; z++)
            printf("%02X%c", rr[0].data[z], ((z + 1) % 16) ? ' ' : '\n');
    }
    printf("\n");
#endif

    /* r->length is now the compressed data plus mac */
    if ((sess != NULL) &&
        (s->enc_read_ctx != NULL) &&
        (!FUNC28(s) && FUNC4(s->read_hash) != NULL)) {
        /* s->read_hash != NULL => mac_size != -1 */
        unsigned char *mac = NULL;
        unsigned char mac_tmp[EVP_MAX_MD_SIZE];

        mac_size = FUNC5(s->read_hash);
        if (!FUNC33(mac_size <= EVP_MAX_MD_SIZE)) {
            FUNC30(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_GET_RECORD,
                     ERR_R_INTERNAL_ERROR);
            return -1;
        }

        for (j = 0; j < num_recs; j++) {
            thisrr = &rr[j];
            /*
             * orig_len is the length of the record before any padding was
             * removed. This is public information, as is the MAC in use,
             * therefore we can safely process the record in a different amount
             * of time if it's too short to possibly contain a MAC.
             */
            if (thisrr->orig_len < mac_size ||
                /* CBC records must have a padding length byte too. */
                (FUNC2(s->enc_read_ctx) == EVP_CIPH_CBC_MODE &&
                 thisrr->orig_len < mac_size + 1)) {
                FUNC30(s, SSL_AD_DECODE_ERROR, SSL_F_SSL3_GET_RECORD,
                         SSL_R_LENGTH_TOO_SHORT);
                return -1;
            }

            if (FUNC2(s->enc_read_ctx) == EVP_CIPH_CBC_MODE) {
                /*
                 * We update the length so that the TLS header bytes can be
                 * constructed correctly but we need to extract the MAC in
                 * constant time from within the record, without leaking the
                 * contents of the padding bytes.
                 */
                mac = mac_tmp;
                if (!FUNC37(mac_tmp, thisrr, mac_size)) {
                    FUNC30(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_GET_RECORD,
                             ERR_R_INTERNAL_ERROR);
                    return -1;
                }
                thisrr->length -= mac_size;
            } else {
                /*
                 * In this case there's no padding, so |rec->orig_len| equals
                 * |rec->length| and we checked that there's enough bytes for
                 * |mac_size| above.
                 */
                thisrr->length -= mac_size;
                mac = &thisrr->data[thisrr->length];
            }

            i = s->method->ssl3_enc->mac(s, thisrr, md, 0 /* not send */ );
            if (i == 0 || mac == NULL
                || FUNC0(md, mac, (size_t)mac_size) != 0)
                enc_err = -1;
            if (thisrr->length > SSL3_RT_MAX_COMPRESSED_LENGTH + mac_size)
                enc_err = -1;
        }
    }

    if (enc_err < 0) {
        if (FUNC34(s)) {
            /* We already called SSLfatal() */
            return -1;
        }
        if (num_recs == 1 && FUNC35(s)) {
            /*
             * We assume this is unreadable early_data - we treat it like an
             * empty record
             */

            /*
             * The record length may have been modified by the mac check above
             * so we use the previously saved value
             */
            if (!FUNC32(s, first_rec_len,
                                     EARLY_DATA_CIPHERTEXT_OVERHEAD, 0)) {
                /* SSLfatal() already called */
                return -1;
            }

            thisrr = &rr[0];
            thisrr->length = 0;
            thisrr->read = 1;
            FUNC23(&s->rlayer, 1);
            FUNC22(&s->rlayer);
            return 1;
        }
        /*
         * A separate 'decryption_failed' alert was introduced with TLS 1.0,
         * SSL 3.0 only has 'bad_record_mac'.  But unless a decryption
         * failure is directly visible from the ciphertext anyway, we should
         * not reveal which kind of error occurred -- this might become
         * visible to an attacker (e.g. via a logfile)
         */
        FUNC30(s, SSL_AD_BAD_RECORD_MAC, SSL_F_SSL3_GET_RECORD,
                 SSL_R_DECRYPTION_FAILED_OR_BAD_RECORD_MAC);
        return -1;
    }

    for (j = 0; j < num_recs; j++) {
        thisrr = &rr[j];

        /* thisrr->length is now just compressed */
        if (s->expand != NULL) {
            if (thisrr->length > SSL3_RT_MAX_COMPRESSED_LENGTH) {
                FUNC30(s, SSL_AD_RECORD_OVERFLOW, SSL_F_SSL3_GET_RECORD,
                         SSL_R_COMPRESSED_LENGTH_TOO_LONG);
                return -1;
            }
            if (!FUNC38(s, thisrr)) {
                FUNC30(s, SSL_AD_DECOMPRESSION_FAILURE, SSL_F_SSL3_GET_RECORD,
                         SSL_R_BAD_DECOMPRESSION);
                return -1;
            }
        }

        if (FUNC27(s)
                && s->enc_read_ctx != NULL
                && thisrr->type != SSL3_RT_ALERT) {
            size_t end;

            if (thisrr->length == 0
                    || thisrr->type != SSL3_RT_APPLICATION_DATA) {
                FUNC30(s, SSL_AD_UNEXPECTED_MESSAGE, SSL_F_SSL3_GET_RECORD,
                         SSL_R_BAD_RECORD_TYPE);
                return -1;
            }

            /* Strip trailing padding */
            for (end = thisrr->length - 1; end > 0 && thisrr->data[end] == 0;
                 end--)
                continue;

            thisrr->length = end;
            thisrr->type = thisrr->data[end];
            if (thisrr->type != SSL3_RT_APPLICATION_DATA
                    && thisrr->type != SSL3_RT_ALERT
                    && thisrr->type != SSL3_RT_HANDSHAKE) {
                FUNC30(s, SSL_AD_UNEXPECTED_MESSAGE, SSL_F_SSL3_GET_RECORD,
                         SSL_R_BAD_RECORD_TYPE);
                return -1;
            }
            if (s->msg_callback)
                s->msg_callback(0, s->version, SSL3_RT_INNER_CONTENT_TYPE,
                                &thisrr->data[end], 1, s, s->msg_callback_arg);
        }

        /*
         * TLSv1.3 alert and handshake records are required to be non-zero in
         * length.
         */
        if (FUNC27(s)
                && (thisrr->type == SSL3_RT_HANDSHAKE
                    || thisrr->type == SSL3_RT_ALERT)
                && thisrr->length == 0) {
            FUNC30(s, SSL_AD_UNEXPECTED_MESSAGE, SSL_F_SSL3_GET_RECORD,
                     SSL_R_BAD_LENGTH);
            return -1;
        }

        if (thisrr->length > SSL3_RT_MAX_PLAIN_LENGTH) {
            FUNC30(s, SSL_AD_RECORD_OVERFLOW, SSL_F_SSL3_GET_RECORD,
                     SSL_R_DATA_LENGTH_TOO_LONG);
            return -1;
        }

        /* If received packet overflows current Max Fragment Length setting */
        if (s->session != NULL && FUNC31(s->session)
                && thisrr->length > FUNC6(s->session)) {
            FUNC30(s, SSL_AD_RECORD_OVERFLOW, SSL_F_SSL3_GET_RECORD,
                     SSL_R_DATA_LENGTH_TOO_LONG);
            return -1;
        }

        thisrr->off = 0;
        /*-
         * So at this point the following is true
         * thisrr->type   is the type of record
         * thisrr->length == number of bytes in record
         * thisrr->off    == offset to first valid byte
         * thisrr->data   == where to take bytes from, increment after use :-).
         */

        /* just read a 0 length packet */
        if (thisrr->length == 0) {
            FUNC18(&s->rlayer);
            if (FUNC12(&s->rlayer)
                > MAX_EMPTY_RECORDS) {
                FUNC30(s, SSL_AD_UNEXPECTED_MESSAGE, SSL_F_SSL3_GET_RECORD,
                         SSL_R_RECORD_TOO_SMALL);
                return -1;
            }
        } else {
            FUNC20(&s->rlayer);
        }
    }

    if (s->early_data_state == SSL_EARLY_DATA_READING) {
        thisrr = &rr[0];
        if (thisrr->type == SSL3_RT_APPLICATION_DATA
                && !FUNC32(s, thisrr->length, 0, 0)) {
            /* SSLfatal already called */
            return -1;
        }
    }

    FUNC23(&s->rlayer, num_recs);
    return 1;
}