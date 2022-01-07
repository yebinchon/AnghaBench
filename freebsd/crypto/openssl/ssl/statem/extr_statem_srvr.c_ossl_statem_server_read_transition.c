
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int hand_state; int no_cert_verify; } ;
struct TYPE_15__ {int verify_mode; int rwstate; scalar_t__ init_num; TYPE_3__* s3; TYPE_2__* session; int version; TYPE_5__ statem; } ;
struct TYPE_12__ {int cert_request; } ;
struct TYPE_14__ {int npn_seen; TYPE_1__ tmp; } ;
struct TYPE_13__ {int * peer; } ;
typedef TYPE_4__ SSL ;
typedef TYPE_5__ OSSL_STATEM ;
typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 int BIO_set_retry_read (int *) ;

 int SSL3_AD_UNEXPECTED_MESSAGE ;
 int SSL3_MT_CERTIFICATE ;
 int SSL3_MT_CERTIFICATE_VERIFY ;
 int SSL3_MT_CHANGE_CIPHER_SPEC ;
 int SSL3_MT_CLIENT_HELLO ;
 int SSL3_MT_CLIENT_KEY_EXCHANGE ;
 int SSL3_MT_FINISHED ;
 int SSL3_MT_NEXT_PROTO ;
 int SSL3_VERSION ;
 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_F_OSSL_STATEM_SERVER_READ_TRANSITION ;
 scalar_t__ SSL_IS_DTLS (TYPE_4__*) ;
 scalar_t__ SSL_IS_TLS13 (TYPE_4__*) ;
 int SSL_READING ;
 int SSL_R_PEER_DID_NOT_RETURN_A_CERTIFICATE ;
 int SSL_R_UNEXPECTED_MESSAGE ;
 int SSL_VERIFY_FAIL_IF_NO_PEER_CERT ;
 int SSL_VERIFY_PEER ;
 int * SSL_get_rbio (TYPE_4__*) ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;





 int TLS_ST_SR_CLNT_HELLO ;
 void* TLS_ST_SR_FINISHED ;




 int ossl_statem_server13_read_transition (TYPE_4__*,int) ;

int ossl_statem_server_read_transition(SSL *s, int mt)
{
    OSSL_STATEM *st = &s->statem;

    if (SSL_IS_TLS13(s)) {
        if (!ossl_statem_server13_read_transition(s, mt))
            goto err;
        return 1;
    }

    switch (st->hand_state) {
    default:
        break;

    case 136:
    case 135:
    case 137:
        if (mt == SSL3_MT_CLIENT_HELLO) {
            st->hand_state = TLS_ST_SR_CLNT_HELLO;
            return 1;
        }
        break;

    case 128:
        if (mt == SSL3_MT_CLIENT_KEY_EXCHANGE) {
            if (s->s3->tmp.cert_request) {
                if (s->version == SSL3_VERSION) {
                    if ((s->verify_mode & SSL_VERIFY_PEER)
                        && (s->verify_mode & SSL_VERIFY_FAIL_IF_NO_PEER_CERT)) {





                        SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE,
                                 SSL_F_OSSL_STATEM_SERVER_READ_TRANSITION,
                                 SSL_R_PEER_DID_NOT_RETURN_A_CERTIFICATE);
                        return 0;
                    }
                    st->hand_state = 131;
                    return 1;
                }
            } else {
                st->hand_state = 131;
                return 1;
            }
        } else if (s->s3->tmp.cert_request) {
            if (mt == SSL3_MT_CERTIFICATE) {
                st->hand_state = 134;
                return 1;
            }
        }
        break;

    case 134:
        if (mt == SSL3_MT_CLIENT_KEY_EXCHANGE) {
            st->hand_state = 131;
            return 1;
        }
        break;

    case 131:
        if (s->session->peer == ((void*)0) || st->no_cert_verify) {
            if (mt == SSL3_MT_CHANGE_CIPHER_SPEC) {






                st->hand_state = 132;
                return 1;
            }
        } else {
            if (mt == SSL3_MT_CERTIFICATE_VERIFY) {
                st->hand_state = 133;
                return 1;
            }
        }
        break;

    case 133:
        if (mt == SSL3_MT_CHANGE_CIPHER_SPEC) {
            st->hand_state = 132;
            return 1;
        }
        break;

    case 132:

        if (s->s3->npn_seen) {
            if (mt == SSL3_MT_NEXT_PROTO) {
                st->hand_state = 130;
                return 1;
            }
        } else {

            if (mt == SSL3_MT_FINISHED) {
                st->hand_state = TLS_ST_SR_FINISHED;
                return 1;
            }

        }

        break;


    case 130:
        if (mt == SSL3_MT_FINISHED) {
            st->hand_state = TLS_ST_SR_FINISHED;
            return 1;
        }
        break;


    case 129:
        if (mt == SSL3_MT_CHANGE_CIPHER_SPEC) {
            st->hand_state = 132;
            return 1;
        }
        break;
    }

 err:

    if (SSL_IS_DTLS(s) && mt == SSL3_MT_CHANGE_CIPHER_SPEC) {
        BIO *rbio;





        s->init_num = 0;
        s->rwstate = SSL_READING;
        rbio = SSL_get_rbio(s);
        BIO_clear_retry_flags(rbio);
        BIO_set_retry_read(rbio);
        return 0;
    }
    SSLfatal(s, SSL3_AD_UNEXPECTED_MESSAGE,
             SSL_F_OSSL_STATEM_SERVER_READ_TRANSITION,
             SSL_R_UNEXPECTED_MESSAGE);
    return 0;
}
