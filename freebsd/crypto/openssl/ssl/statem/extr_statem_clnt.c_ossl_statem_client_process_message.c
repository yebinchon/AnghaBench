
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {int hand_state; } ;
struct TYPE_19__ {TYPE_2__ statem; } ;
typedef TYPE_1__ SSL ;
typedef int PACKET ;
typedef TYPE_2__ OSSL_STATEM ;
typedef int MSG_PROCESS_RETURN ;



 int ERR_R_INTERNAL_ERROR ;
 int MSG_PROCESS_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_OSSL_STATEM_CLIENT_PROCESS_MESSAGE ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;
 int dtls_process_hello_verify (TYPE_1__*,int *) ;
 int tls_process_cert_status (TYPE_1__*,int *) ;
 int tls_process_cert_verify (TYPE_1__*,int *) ;
 int tls_process_certificate_request (TYPE_1__*,int *) ;
 int tls_process_change_cipher_spec (TYPE_1__*,int *) ;
 int tls_process_encrypted_extensions (TYPE_1__*,int *) ;
 int tls_process_finished (TYPE_1__*,int *) ;
 int tls_process_hello_req (TYPE_1__*,int *) ;
 int tls_process_key_exchange (TYPE_1__*,int *) ;
 int tls_process_key_update (TYPE_1__*,int *) ;
 int tls_process_new_session_ticket (TYPE_1__*,int *) ;
 int tls_process_server_certificate (TYPE_1__*,int *) ;
 int tls_process_server_done (TYPE_1__*,int *) ;
 int tls_process_server_hello (TYPE_1__*,int *) ;

MSG_PROCESS_RETURN ossl_statem_client_process_message(SSL *s, PACKET *pkt)
{
    OSSL_STATEM *st = &s->statem;

    switch (st->hand_state) {
    default:

        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_OSSL_STATEM_CLIENT_PROCESS_MESSAGE,
                 ERR_R_INTERNAL_ERROR);
        return MSG_PROCESS_ERROR;

    case 128:
        return tls_process_server_hello(s, pkt);

    case 141:
        return dtls_process_hello_verify(s, pkt);

    case 140:
        return tls_process_server_certificate(s, pkt);

    case 137:
        return tls_process_cert_verify(s, pkt);

    case 138:
        return tls_process_cert_status(s, pkt);

    case 132:
        return tls_process_key_exchange(s, pkt);

    case 139:
        return tls_process_certificate_request(s, pkt);

    case 129:
        return tls_process_server_done(s, pkt);

    case 136:
        return tls_process_change_cipher_spec(s, pkt);

    case 130:
        return tls_process_new_session_ticket(s, pkt);

    case 134:
        return tls_process_finished(s, pkt);

    case 133:
        return tls_process_hello_req(s, pkt);

    case 135:
        return tls_process_encrypted_extensions(s, pkt);

    case 131:
        return tls_process_key_update(s, pkt);
    }
}
