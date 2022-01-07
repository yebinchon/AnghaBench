
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ early_data_state; TYPE_2__* method; int rlayer; } ;
struct TYPE_8__ {TYPE_1__* ssl3_enc; } ;
struct TYPE_7__ {int (* change_cipher_state ) (TYPE_3__*,int) ;} ;
typedef TYPE_3__ SSL ;
typedef int PACKET ;
typedef int MSG_PROCESS_RETURN ;


 int ERR_R_INTERNAL_ERROR ;
 int MSG_PROCESS_CONTINUE_READING ;
 int MSG_PROCESS_ERROR ;
 scalar_t__ PACKET_remaining (int *) ;
 scalar_t__ RECORD_LAYER_processed_read_pending (int *) ;
 int SSL3_CC_HANDSHAKE ;
 int SSL3_CHANGE_CIPHER_SERVER_READ ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_UNEXPECTED_MESSAGE ;
 scalar_t__ SSL_EARLY_DATA_FINISHED_READING ;
 scalar_t__ SSL_EARLY_DATA_READING ;
 scalar_t__ SSL_EARLY_DATA_READ_RETRY ;
 int SSL_F_TLS_PROCESS_END_OF_EARLY_DATA ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_R_NOT_ON_RECORD_BOUNDARY ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int stub1 (TYPE_3__*,int) ;

MSG_PROCESS_RETURN tls_process_end_of_early_data(SSL *s, PACKET *pkt)
{
    if (PACKET_remaining(pkt) != 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_END_OF_EARLY_DATA,
                 SSL_R_LENGTH_MISMATCH);
        return MSG_PROCESS_ERROR;
    }

    if (s->early_data_state != SSL_EARLY_DATA_READING
            && s->early_data_state != SSL_EARLY_DATA_READ_RETRY) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_END_OF_EARLY_DATA,
                 ERR_R_INTERNAL_ERROR);
        return MSG_PROCESS_ERROR;
    }





    if (RECORD_LAYER_processed_read_pending(&s->rlayer)) {
        SSLfatal(s, SSL_AD_UNEXPECTED_MESSAGE,
                 SSL_F_TLS_PROCESS_END_OF_EARLY_DATA,
                 SSL_R_NOT_ON_RECORD_BOUNDARY);
        return MSG_PROCESS_ERROR;
    }

    s->early_data_state = SSL_EARLY_DATA_FINISHED_READING;
    if (!s->method->ssl3_enc->change_cipher_state(s,
                SSL3_CC_HANDSHAKE | SSL3_CHANGE_CIPHER_SERVER_READ)) {

        return MSG_PROCESS_ERROR;
    }

    return MSG_PROCESS_CONTINUE_READING;
}
