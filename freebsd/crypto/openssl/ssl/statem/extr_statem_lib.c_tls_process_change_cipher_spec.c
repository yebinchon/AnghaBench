
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ version; TYPE_3__* d1; TYPE_2__* s3; } ;
struct TYPE_13__ {int handshake_read_seq; } ;
struct TYPE_11__ {int * new_cipher; } ;
struct TYPE_12__ {int change_cipher_spec; TYPE_1__ tmp; } ;
typedef TYPE_4__ SSL ;
typedef int PACKET ;
typedef int MSG_PROCESS_RETURN ;


 int BIO_CTRL_DGRAM_SCTP_AUTH_CCS_RCVD ;
 int BIO_ctrl (int ,int ,int,int *) ;
 scalar_t__ DTLS1_BAD_VER ;
 int DTLS1_CCS_HEADER_LENGTH ;
 int ERR_R_INTERNAL_ERROR ;
 int MSG_PROCESS_CONTINUE_READING ;
 int MSG_PROCESS_ERROR ;
 size_t PACKET_remaining (int *) ;
 int SSL3_CC_READ ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_UNEXPECTED_MESSAGE ;
 int SSL_F_TLS_PROCESS_CHANGE_CIPHER_SPEC ;
 scalar_t__ SSL_IS_DTLS (TYPE_4__*) ;
 int SSL_R_BAD_CHANGE_CIPHER_SPEC ;
 int SSL_R_CCS_RECEIVED_EARLY ;
 int SSL_get_wbio (TYPE_4__*) ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 int dtls1_reset_seq_numbers (TYPE_4__*,int ) ;
 int ssl3_do_change_cipher_spec (TYPE_4__*) ;

MSG_PROCESS_RETURN tls_process_change_cipher_spec(SSL *s, PACKET *pkt)
{
    size_t remain;

    remain = PACKET_remaining(pkt);





    if (SSL_IS_DTLS(s)) {
        if ((s->version == DTLS1_BAD_VER
             && remain != DTLS1_CCS_HEADER_LENGTH + 1)
            || (s->version != DTLS1_BAD_VER
                && remain != DTLS1_CCS_HEADER_LENGTH - 1)) {
            SSLfatal(s, SSL_AD_DECODE_ERROR,
                     SSL_F_TLS_PROCESS_CHANGE_CIPHER_SPEC,
                    SSL_R_BAD_CHANGE_CIPHER_SPEC);
            return MSG_PROCESS_ERROR;
        }
    } else {
        if (remain != 0) {
            SSLfatal(s, SSL_AD_DECODE_ERROR,
                     SSL_F_TLS_PROCESS_CHANGE_CIPHER_SPEC,
                     SSL_R_BAD_CHANGE_CIPHER_SPEC);
            return MSG_PROCESS_ERROR;
        }
    }


    if (s->s3->tmp.new_cipher == ((void*)0)) {
        SSLfatal(s, SSL_AD_UNEXPECTED_MESSAGE,
                 SSL_F_TLS_PROCESS_CHANGE_CIPHER_SPEC, SSL_R_CCS_RECEIVED_EARLY);
        return MSG_PROCESS_ERROR;
    }

    s->s3->change_cipher_spec = 1;
    if (!ssl3_do_change_cipher_spec(s)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CHANGE_CIPHER_SPEC,
                 ERR_R_INTERNAL_ERROR);
        return MSG_PROCESS_ERROR;
    }

    if (SSL_IS_DTLS(s)) {
        dtls1_reset_seq_numbers(s, SSL3_CC_READ);

        if (s->version == DTLS1_BAD_VER)
            s->d1->handshake_read_seq++;







        BIO_ctrl(SSL_get_wbio(s), BIO_CTRL_DGRAM_SCTP_AUTH_CCS_RCVD, 1, ((void*)0));

    }

    return MSG_PROCESS_CONTINUE_READING;
}
