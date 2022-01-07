
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {unsigned int legacy_version; unsigned int session_id_len; scalar_t__ dtls_cookie_len; scalar_t__ compressions_len; struct TYPE_17__* pre_proc_exts; int pre_proc_exts_len; int extensions; scalar_t__ compressions; int ciphersuites; scalar_t__ dtls_cookie; scalar_t__ session_id; scalar_t__ random; scalar_t__ isv2; } ;
struct TYPE_16__ {int renegotiate; int options; int new_session; scalar_t__ hello_retry_request; TYPE_3__* clienthello; int rlayer; TYPE_1__* s3; } ;
struct TYPE_15__ {int send_connection_binding; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;
typedef int MSG_PROCESS_RETURN ;
typedef TYPE_3__ CLIENTHELLO_MSG ;


 unsigned int DTLS1_COOKIE_LENGTH ;
 int ERR_R_INTERNAL_ERROR ;
 unsigned int MAX_COMPRESSIONS_SIZE ;
 int MSG_PROCESS_CONTINUE_PROCESSING ;
 int MSG_PROCESS_ERROR ;
 int MSG_PROCESS_FINISHED_READING ;
 int OPENSSL_free (TYPE_3__*) ;
 TYPE_3__* OPENSSL_zalloc (int) ;
 int PACKET_buf_init (int *,unsigned char const*,int) ;
 int PACKET_copy_all (int *,scalar_t__,unsigned int,scalar_t__*) ;
 int PACKET_copy_bytes (int *,scalar_t__,unsigned int) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 int PACKET_get_length_prefixed_1 (int *,int *) ;
 int PACKET_get_length_prefixed_2 (int *,int *) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 int PACKET_get_sub_packet (int *,int *,unsigned int) ;
 int PACKET_null_init (int *) ;
 scalar_t__ PACKET_remaining (int *) ;
 scalar_t__ RECORD_LAYER_is_sslv2_record (int *) ;
 unsigned int SSL2_MT_CLIENT_HELLO ;
 int SSL3_AL_WARNING ;
 unsigned int SSL3_RANDOM_SIZE ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_NO_RENEGOTIATION ;
 int SSL_AD_UNEXPECTED_MESSAGE ;
 int SSL_EXT_CLIENT_HELLO ;
 int SSL_F_TLS_PROCESS_CLIENT_HELLO ;
 scalar_t__ SSL_HRR_NONE ;
 scalar_t__ SSL_IS_DTLS (TYPE_2__*) ;
 int SSL_IS_FIRST_HANDSHAKE (TYPE_2__*) ;
 int SSL_IS_TLS13 (TYPE_2__*) ;
 unsigned int SSL_MAX_SSL_SESSION_ID_LENGTH ;
 int SSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION ;
 int SSL_OP_COOKIE_EXCHANGE ;
 int SSL_OP_NO_RENEGOTIATION ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_R_LENGTH_TOO_SHORT ;
 int SSL_R_RECORD_LENGTH_MISMATCH ;
 int SSL_R_UNEXPECTED_MESSAGE ;
 int SSL_get_options (TYPE_2__*) ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int memset (scalar_t__,int ,unsigned int) ;
 int ossl_assert (int) ;
 int ssl3_send_alert (TYPE_2__*,int ,int ) ;
 int tls_collect_extensions (TYPE_2__*,int *,int ,TYPE_3__**,int *,int) ;

MSG_PROCESS_RETURN tls_process_client_hello(SSL *s, PACKET *pkt)
{

    PACKET session_id, compression, extensions, cookie;
    static const unsigned char null_compression = 0;
    CLIENTHELLO_MSG *clienthello = ((void*)0);


    if (s->renegotiate == 0 && !SSL_IS_FIRST_HANDSHAKE(s)) {
        if (!ossl_assert(!SSL_IS_TLS13(s))) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        if ((s->options & SSL_OP_NO_RENEGOTIATION) != 0
                || (!s->s3->send_connection_binding
                    && (s->options
                        & SSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION) == 0)) {
            ssl3_send_alert(s, SSL3_AL_WARNING, SSL_AD_NO_RENEGOTIATION);
            return MSG_PROCESS_FINISHED_READING;
        }
        s->renegotiate = 1;
        s->new_session = 1;
    }

    clienthello = OPENSSL_zalloc(sizeof(*clienthello));
    if (clienthello == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }




    clienthello->isv2 = RECORD_LAYER_is_sslv2_record(&s->rlayer);
    PACKET_null_init(&cookie);

    if (clienthello->isv2) {
        unsigned int mt;

        if (!SSL_IS_FIRST_HANDSHAKE(s)
                || s->hello_retry_request != SSL_HRR_NONE) {
            SSLfatal(s, SSL_AD_UNEXPECTED_MESSAGE,
                     SSL_F_TLS_PROCESS_CLIENT_HELLO, SSL_R_UNEXPECTED_MESSAGE);
            goto err;
        }
        if (!PACKET_get_1(pkt, &mt)
            || mt != SSL2_MT_CLIENT_HELLO) {





            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
    }

    if (!PACKET_get_net_2(pkt, &clienthello->legacy_version)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                 SSL_R_LENGTH_TOO_SHORT);
        goto err;
    }


    if (clienthello->isv2) {





        unsigned int ciphersuite_len, session_id_len, challenge_len;
        PACKET challenge;

        if (!PACKET_get_net_2(pkt, &ciphersuite_len)
            || !PACKET_get_net_2(pkt, &session_id_len)
            || !PACKET_get_net_2(pkt, &challenge_len)) {
            SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     SSL_R_RECORD_LENGTH_MISMATCH);
            goto err;
        }

        if (session_id_len > SSL_MAX_SSL_SESSION_ID_LENGTH) {
            SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                     SSL_F_TLS_PROCESS_CLIENT_HELLO, SSL_R_LENGTH_MISMATCH);
            goto err;
        }

        if (!PACKET_get_sub_packet(pkt, &clienthello->ciphersuites,
                                   ciphersuite_len)
            || !PACKET_copy_bytes(pkt, clienthello->session_id, session_id_len)
            || !PACKET_get_sub_packet(pkt, &challenge, challenge_len)

            || PACKET_remaining(pkt) != 0) {
            SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     SSL_R_RECORD_LENGTH_MISMATCH);
            goto err;
        }
        clienthello->session_id_len = session_id_len;






        challenge_len = challenge_len > SSL3_RANDOM_SIZE
                        ? SSL3_RANDOM_SIZE : challenge_len;
        memset(clienthello->random, 0, SSL3_RANDOM_SIZE);
        if (!PACKET_copy_bytes(&challenge,
                               clienthello->random + SSL3_RANDOM_SIZE -
                               challenge_len, challenge_len)

            || !PACKET_buf_init(&compression, &null_compression, 1)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        PACKET_null_init(&clienthello->extensions);
    } else {

        if (!PACKET_copy_bytes(pkt, clienthello->random, SSL3_RANDOM_SIZE)
            || !PACKET_get_length_prefixed_1(pkt, &session_id)
            || !PACKET_copy_all(&session_id, clienthello->session_id,
                    SSL_MAX_SSL_SESSION_ID_LENGTH,
                    &clienthello->session_id_len)) {
            SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     SSL_R_LENGTH_MISMATCH);
            goto err;
        }

        if (SSL_IS_DTLS(s)) {
            if (!PACKET_get_length_prefixed_1(pkt, &cookie)) {
                SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                         SSL_R_LENGTH_MISMATCH);
                goto err;
            }
            if (!PACKET_copy_all(&cookie, clienthello->dtls_cookie,
                                 DTLS1_COOKIE_LENGTH,
                                 &clienthello->dtls_cookie_len)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_PROCESS_CLIENT_HELLO, ERR_R_INTERNAL_ERROR);
                goto err;
            }





            if (SSL_get_options(s) & SSL_OP_COOKIE_EXCHANGE) {
                if (clienthello->dtls_cookie_len == 0) {
                    OPENSSL_free(clienthello);
                    return MSG_PROCESS_FINISHED_READING;
                }
            }
        }

        if (!PACKET_get_length_prefixed_2(pkt, &clienthello->ciphersuites)) {
            SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     SSL_R_LENGTH_MISMATCH);
            goto err;
        }

        if (!PACKET_get_length_prefixed_1(pkt, &compression)) {
            SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     SSL_R_LENGTH_MISMATCH);
            goto err;
        }


        if (PACKET_remaining(pkt) == 0) {
            PACKET_null_init(&clienthello->extensions);
        } else {
            if (!PACKET_get_length_prefixed_2(pkt, &clienthello->extensions)
                    || PACKET_remaining(pkt) != 0) {
                SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                         SSL_R_LENGTH_MISMATCH);
                goto err;
            }
        }
    }

    if (!PACKET_copy_all(&compression, clienthello->compressions,
                         MAX_COMPRESSIONS_SIZE,
                         &clienthello->compressions_len)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }


    extensions = clienthello->extensions;
    if (!tls_collect_extensions(s, &extensions, SSL_EXT_CLIENT_HELLO,
                                &clienthello->pre_proc_exts,
                                &clienthello->pre_proc_exts_len, 1)) {

        goto err;
    }
    s->clienthello = clienthello;

    return MSG_PROCESS_CONTINUE_PROCESSING;

 err:
    if (clienthello != ((void*)0))
        OPENSSL_free(clienthello->pre_proc_exts);
    OPENSSL_free(clienthello);

    return MSG_PROCESS_ERROR;
}
