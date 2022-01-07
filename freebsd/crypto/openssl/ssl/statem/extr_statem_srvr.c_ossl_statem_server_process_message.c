
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int hand_state; } ;
struct TYPE_14__ {TYPE_2__ statem; } ;
typedef TYPE_1__ SSL ;
typedef int PACKET ;
typedef TYPE_2__ OSSL_STATEM ;
typedef int MSG_PROCESS_RETURN ;


 int ERR_R_INTERNAL_ERROR ;
 int MSG_PROCESS_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_OSSL_STATEM_SERVER_PROCESS_MESSAGE ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;
 int tls_process_cert_verify (TYPE_1__*,int *) ;
 int tls_process_change_cipher_spec (TYPE_1__*,int *) ;
 int tls_process_client_certificate (TYPE_1__*,int *) ;
 int tls_process_client_hello (TYPE_1__*,int *) ;
 int tls_process_client_key_exchange (TYPE_1__*,int *) ;
 int tls_process_end_of_early_data (TYPE_1__*,int *) ;
 int tls_process_finished (TYPE_1__*,int *) ;
 int tls_process_key_update (TYPE_1__*,int *) ;
 int tls_process_next_proto (TYPE_1__*,int *) ;

MSG_PROCESS_RETURN ossl_statem_server_process_message(SSL *s, PACKET *pkt)
{
    OSSL_STATEM *st = &s->statem;

    switch (st->hand_state) {
    default:

        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_OSSL_STATEM_SERVER_PROCESS_MESSAGE,
                 ERR_R_INTERNAL_ERROR);
        return MSG_PROCESS_ERROR;

    case 133:
        return tls_process_client_hello(s, pkt);

    case 132:
        return tls_process_end_of_early_data(s, pkt);

    case 136:
        return tls_process_client_certificate(s, pkt);

    case 130:
        return tls_process_client_key_exchange(s, pkt);

    case 135:
        return tls_process_cert_verify(s, pkt);


    case 128:
        return tls_process_next_proto(s, pkt);


    case 134:
        return tls_process_change_cipher_spec(s, pkt);

    case 131:
        return tls_process_finished(s, pkt);

    case 129:
        return tls_process_key_update(s, pkt);

    }
}
