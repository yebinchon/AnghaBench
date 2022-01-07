
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_20__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_19__ ;


typedef int WPACKET ;
struct TYPE_27__ {int version; int rlayer; TYPE_3__* d1; int msg_callback_arg; int (* msg_callback ) (int,int,unsigned int,unsigned char*,int,TYPE_4__*,int ) ;TYPE_2__* method; TYPE_1__* ctx; int * handshake_func; } ;
struct TYPE_26__ {int handshake_read_seq; int handshake_write_seq; int next_handshake_write_seq; } ;
struct TYPE_25__ {scalar_t__ version; } ;
struct TYPE_24__ {unsigned char* buf; } ;
struct TYPE_23__ {scalar_t__ (* app_verify_cookie_cb ) (TYPE_4__*,unsigned char*,unsigned int) ;scalar_t__ (* app_gen_cookie_cb ) (TYPE_4__*,unsigned char*,unsigned int*) ;} ;
struct TYPE_22__ {unsigned char* buf; } ;
typedef TYPE_4__ SSL ;
typedef int PACKET ;
typedef int BIO_ADDR ;
typedef int BIO ;


 int BIO_ADDR_clear (int *) ;
 int BIO_ADDR_free (int *) ;
 int * BIO_ADDR_new () ;
 scalar_t__ BIO_dgram_get_peer (int *,int *) ;
 int BIO_dgram_set_peer (int *,int *) ;
 scalar_t__ BIO_flush (int *) ;
 int BIO_read (int *,unsigned char*,scalar_t__) ;
 scalar_t__ BIO_should_retry (int *) ;
 int BIO_write (int *,unsigned char*,size_t) ;
 int DTLS1_COOKIE_LENGTH ;
 size_t DTLS1_HM_HEADER_LENGTH ;
 unsigned int DTLS1_MT_HELLO_VERIFY_REQUEST ;
 int DTLS1_RT_HEADER_LENGTH ;
 int DTLS1_VERSION ;
 unsigned int DTLS1_VERSION_MAJOR ;
 scalar_t__ DTLS_ANY_VERSION ;
 int DTLS_RECORD_LAYER_set_write_sequence (int *,unsigned char*) ;
 scalar_t__ DTLS_VERSION_LT (unsigned int,unsigned int) ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_clear_error () ;
 int LISTEN_SEND_VERIFY_REQUEST ;
 int LISTEN_SUCCESS ;
 int PACKET_buf_init (int *,unsigned char*,int) ;
 int PACKET_copy_bytes (int *,unsigned char*,int) ;
 unsigned char* PACKET_data (int *) ;
 int PACKET_forward (int *,int) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 int PACKET_get_length_prefixed_1 (int *,int *) ;
 int PACKET_get_length_prefixed_2 (int *,int *) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 int PACKET_get_net_3_len (int *,size_t*) ;
 int PACKET_get_sub_packet (int *,int *,size_t) ;
 size_t PACKET_remaining (int *) ;
 TYPE_20__* RECORD_LAYER_get_rbuf (int *) ;
 TYPE_19__* RECORD_LAYER_get_wbuf (int *) ;
 int SEQ_NUM_SIZE ;
 int SSL3_ALIGN_PAYLOAD ;
 unsigned int SSL3_MT_CLIENT_HELLO ;
 int SSL3_RANDOM_SIZE ;
 unsigned int SSL3_RT_HANDSHAKE ;
 unsigned int SSL3_RT_HEADER ;
 size_t SSL3_RT_HEADER_LENGTH ;
 scalar_t__ SSL3_RT_MAX_PLAIN_LENGTH ;
 int SSL_F_DTLSV1_LISTEN ;
 int SSL_OP_COOKIE_EXCHANGE ;
 int SSL_R_BAD_PROTOCOL_VERSION_NUMBER ;
 int SSL_R_BIO_NOT_SET ;
 int SSL_R_COOKIE_GEN_CALLBACK_FAILURE ;
 int SSL_R_FRAGMENTED_CLIENT_HELLO ;
 int SSL_R_INVALID_SEQUENCE_NUMBER ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_R_NO_VERIFY_COOKIE_CALLBACK ;
 int SSL_R_RECORD_TOO_SMALL ;
 int SSL_R_UNEXPECTED_MESSAGE ;
 int SSL_R_UNSUPPORTED_SSL_VERSION ;
 int SSL_R_WRONG_VERSION_NUMBER ;
 int SSL_clear (TYPE_4__*) ;
 int * SSL_get_rbio (TYPE_4__*) ;
 int * SSL_get_wbio (TYPE_4__*) ;
 int SSL_set_accept_state (TYPE_4__*) ;
 int SSL_set_options (TYPE_4__*,int ) ;
 int SSLerr (int ,int ) ;
 int WPACKET_cleanup (int *) ;
 int WPACKET_close (int *) ;
 int WPACKET_finish (int *) ;
 int WPACKET_get_total_written (int *,size_t*) ;
 int WPACKET_init_static_len (int *,unsigned char*,scalar_t__,int ) ;
 int WPACKET_memcpy (int *,unsigned char*,int) ;
 int WPACKET_put_bytes_u16 (int *,unsigned int) ;
 int WPACKET_put_bytes_u24 (int *,int ) ;
 int WPACKET_put_bytes_u8 (int *,unsigned int) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int WPACKET_start_sub_packet_u24 (int *) ;
 int clear_sys_error () ;
 int dtls_buffer_listen_record (TYPE_4__*,size_t,unsigned char*,size_t) ;
 int dtls_raw_hello_verify_request (int *,unsigned char*,unsigned int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int ossl_statem_set_hello_verify_done (TYPE_4__*) ;
 int ssl3_setup_buffers (TYPE_4__*) ;
 scalar_t__ ssl_get_max_send_fragment (TYPE_4__*) ;
 int stub1 (int,int,unsigned int,unsigned char*,int,TYPE_4__*,int ) ;
 int stub2 (int,int,unsigned int,unsigned char const*,size_t,TYPE_4__*,int ) ;
 scalar_t__ stub3 (TYPE_4__*,unsigned char*,unsigned int) ;
 scalar_t__ stub4 (TYPE_4__*,unsigned char*,unsigned int*) ;
 int stub5 (int,int,unsigned int,unsigned char*,int,TYPE_4__*,int ) ;

int DTLSv1_listen(SSL *s, BIO_ADDR *client)
{
    int next, n, ret = 0;
    unsigned char cookie[DTLS1_COOKIE_LENGTH];
    unsigned char seq[SEQ_NUM_SIZE];
    const unsigned char *data;
    unsigned char *buf, *wbuf;
    size_t fragoff, fraglen, msglen, reclen, align = 0;
    unsigned int rectype, versmajor, msgseq, msgtype, clientvers, cookielen;
    BIO *rbio, *wbio;
    BIO_ADDR *tmpclient = ((void*)0);
    PACKET pkt, msgpkt, msgpayload, session, cookiepkt;

    if (s->handshake_func == ((void*)0)) {

        SSL_set_accept_state(s);
    }


    if (!SSL_clear(s))
        return -1;

    ERR_clear_error();

    rbio = SSL_get_rbio(s);
    wbio = SSL_get_wbio(s);

    if (!rbio || !wbio) {
        SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_BIO_NOT_SET);
        return -1;
    }
    if ((s->version & 0xff00) != (DTLS1_VERSION & 0xff00)) {
        SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_UNSUPPORTED_SSL_VERSION);
        return -1;
    }

    if (!ssl3_setup_buffers(s)) {

        return -1;
    }
    buf = RECORD_LAYER_get_rbuf(&s->rlayer)->buf;
    wbuf = RECORD_LAYER_get_wbuf(&s->rlayer)[0].buf;
    buf += align;

    do {


        clear_sys_error();
        n = BIO_read(rbio, buf, SSL3_RT_MAX_PLAIN_LENGTH
                                + DTLS1_RT_HEADER_LENGTH);
        if (n <= 0) {
            if (BIO_should_retry(rbio)) {

                goto end;
            }
            return -1;
        }

        if (!PACKET_buf_init(&pkt, buf, n)) {
            SSLerr(SSL_F_DTLSV1_LISTEN, ERR_R_INTERNAL_ERROR);
            return -1;
        }
        if (n < DTLS1_RT_HEADER_LENGTH) {
            SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_RECORD_TOO_SMALL);
            goto end;
        }

        if (s->msg_callback)
            s->msg_callback(0, 0, SSL3_RT_HEADER, buf,
                            DTLS1_RT_HEADER_LENGTH, s, s->msg_callback_arg);


        if (!PACKET_get_1(&pkt, &rectype)
            || !PACKET_get_1(&pkt, &versmajor)) {
            SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_LENGTH_MISMATCH);
            goto end;
        }

        if (rectype != SSL3_RT_HANDSHAKE) {
            SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_UNEXPECTED_MESSAGE);
            goto end;
        }





        if (versmajor != DTLS1_VERSION_MAJOR) {
            SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_BAD_PROTOCOL_VERSION_NUMBER);
            goto end;
        }

        if (!PACKET_forward(&pkt, 1)

            || !PACKET_copy_bytes(&pkt, seq, SEQ_NUM_SIZE)
            || !PACKET_get_length_prefixed_2(&pkt, &msgpkt)) {
            SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_LENGTH_MISMATCH);
            goto end;
        }
        reclen = PACKET_remaining(&msgpkt);






        if (seq[0] != 0 || seq[1] != 0) {
            SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_UNEXPECTED_MESSAGE);
            goto end;
        }


        data = PACKET_data(&msgpkt);


        if (!PACKET_get_1(&msgpkt, &msgtype)
            || !PACKET_get_net_3_len(&msgpkt, &msglen)
            || !PACKET_get_net_2(&msgpkt, &msgseq)
            || !PACKET_get_net_3_len(&msgpkt, &fragoff)
            || !PACKET_get_net_3_len(&msgpkt, &fraglen)
            || !PACKET_get_sub_packet(&msgpkt, &msgpayload, fraglen)
            || PACKET_remaining(&msgpkt) != 0) {
            SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_LENGTH_MISMATCH);
            goto end;
        }

        if (msgtype != SSL3_MT_CLIENT_HELLO) {
            SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_UNEXPECTED_MESSAGE);
            goto end;
        }


        if (msgseq > 2) {
            SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_INVALID_SEQUENCE_NUMBER);
            goto end;
        }
        if (fragoff != 0 || fraglen > msglen) {

            SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_FRAGMENTED_CLIENT_HELLO);
            goto end;
        }

        if (s->msg_callback)
            s->msg_callback(0, s->version, SSL3_RT_HANDSHAKE, data,
                            fraglen + DTLS1_HM_HEADER_LENGTH, s,
                            s->msg_callback_arg);

        if (!PACKET_get_net_2(&msgpayload, &clientvers)) {
            SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_LENGTH_MISMATCH);
            goto end;
        }




        if (DTLS_VERSION_LT(clientvers, (unsigned int)s->method->version) &&
            s->method->version != DTLS_ANY_VERSION) {
            SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_WRONG_VERSION_NUMBER);
            goto end;
        }

        if (!PACKET_forward(&msgpayload, SSL3_RANDOM_SIZE)
            || !PACKET_get_length_prefixed_1(&msgpayload, &session)
            || !PACKET_get_length_prefixed_1(&msgpayload, &cookiepkt)) {




            SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_LENGTH_MISMATCH);
            goto end;
        }





        if (PACKET_remaining(&cookiepkt) == 0) {
            next = LISTEN_SEND_VERIFY_REQUEST;
        } else {



            if (s->ctx->app_verify_cookie_cb == ((void*)0)) {
                SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_NO_VERIFY_COOKIE_CALLBACK);

                return -1;
            }
            if (s->ctx->app_verify_cookie_cb(s, PACKET_data(&cookiepkt),
                    (unsigned int)PACKET_remaining(&cookiepkt)) == 0) {




                next = LISTEN_SEND_VERIFY_REQUEST;
            } else {

                next = LISTEN_SUCCESS;
            }
        }

        if (next == LISTEN_SEND_VERIFY_REQUEST) {
            WPACKET wpkt;
            unsigned int version;
            size_t wreclen;
            if (s->ctx->app_gen_cookie_cb == ((void*)0) ||
                s->ctx->app_gen_cookie_cb(s, cookie, &cookielen) == 0 ||
                cookielen > 255) {
                SSLerr(SSL_F_DTLSV1_LISTEN, SSL_R_COOKIE_GEN_CALLBACK_FAILURE);

                return -1;
            }






            version = (s->method->version == DTLS_ANY_VERSION) ? DTLS1_VERSION
                                                               : s->version;


            if (!WPACKET_init_static_len(&wpkt,
                                         wbuf,
                                         ssl_get_max_send_fragment(s)
                                         + DTLS1_RT_HEADER_LENGTH,
                                         0)
                    || !WPACKET_put_bytes_u8(&wpkt, SSL3_RT_HANDSHAKE)
                    || !WPACKET_put_bytes_u16(&wpkt, version)




                    || !WPACKET_memcpy(&wpkt, seq, SEQ_NUM_SIZE)

                    || !WPACKET_start_sub_packet_u16(&wpkt)

                    || !WPACKET_put_bytes_u8(&wpkt,
                                             DTLS1_MT_HELLO_VERIFY_REQUEST)






                    || !WPACKET_put_bytes_u24(&wpkt, 0)




                    || !WPACKET_put_bytes_u16(&wpkt, 0)




                    || !WPACKET_put_bytes_u24(&wpkt, 0)






                    || !WPACKET_start_sub_packet_u24(&wpkt)

                    || !dtls_raw_hello_verify_request(&wpkt, cookie, cookielen)

                    || !WPACKET_close(&wpkt)

                    || !WPACKET_close(&wpkt)
                    || !WPACKET_get_total_written(&wpkt, &wreclen)
                    || !WPACKET_finish(&wpkt)) {
                SSLerr(SSL_F_DTLSV1_LISTEN, ERR_R_INTERNAL_ERROR);
                WPACKET_cleanup(&wpkt);

                return -1;
            }
            memcpy(&wbuf[DTLS1_RT_HEADER_LENGTH + 1],
                   &wbuf[DTLS1_RT_HEADER_LENGTH + DTLS1_HM_HEADER_LENGTH - 3],
                   3);

            if (s->msg_callback)
                s->msg_callback(1, 0, SSL3_RT_HEADER, buf,
                                DTLS1_RT_HEADER_LENGTH, s, s->msg_callback_arg);

            if ((tmpclient = BIO_ADDR_new()) == ((void*)0)) {
                SSLerr(SSL_F_DTLSV1_LISTEN, ERR_R_MALLOC_FAILURE);
                goto end;
            }






            if (BIO_dgram_get_peer(rbio, tmpclient) > 0) {
                (void)BIO_dgram_set_peer(wbio, tmpclient);
            }
            BIO_ADDR_free(tmpclient);
            tmpclient = ((void*)0);


            if (BIO_write(wbio, wbuf, wreclen) < (int)wreclen) {
                if (BIO_should_retry(wbio)) {




                    goto end;
                }
                return -1;
            }

            if (BIO_flush(wbio) <= 0) {
                if (BIO_should_retry(wbio)) {




                    goto end;
                }
                return -1;
            }
        }
    } while (next != LISTEN_SUCCESS);




    s->d1->handshake_read_seq = 1;
    s->d1->handshake_write_seq = 1;
    s->d1->next_handshake_write_seq = 1;
    DTLS_RECORD_LAYER_set_write_sequence(&s->rlayer, seq);





    SSL_set_options(s, SSL_OP_COOKIE_EXCHANGE);





    ossl_statem_set_hello_verify_done(s);




    if (BIO_dgram_get_peer(rbio, client) <= 0)
        BIO_ADDR_clear(client);


    if (!dtls_buffer_listen_record(s, reclen, seq, align))
        return -1;

    ret = 1;
 end:
    BIO_ADDR_free(tmpclient);
    return ret;
}
