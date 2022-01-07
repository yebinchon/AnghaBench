
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int options; } ;
typedef TYPE_1__ SSL ;
typedef int PACKET ;
typedef int MSG_PROCESS_RETURN ;


 int MSG_PROCESS_ERROR ;
 int MSG_PROCESS_FINISHED_READING ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL3_AL_WARNING ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_NO_RENEGOTIATION ;
 int SSL_F_TLS_PROCESS_HELLO_REQ ;
 scalar_t__ SSL_IS_DTLS (TYPE_1__*) ;
 int SSL_OP_NO_RENEGOTIATION ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_renegotiate (TYPE_1__*) ;
 int SSL_renegotiate_abbreviated (TYPE_1__*) ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;
 int ssl3_send_alert (TYPE_1__*,int ,int ) ;

MSG_PROCESS_RETURN tls_process_hello_req(SSL *s, PACKET *pkt)
{
    if (PACKET_remaining(pkt) > 0) {

        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_HELLO_REQ,
                 SSL_R_LENGTH_MISMATCH);
        return MSG_PROCESS_ERROR;
    }

    if ((s->options & SSL_OP_NO_RENEGOTIATION)) {
        ssl3_send_alert(s, SSL3_AL_WARNING, SSL_AD_NO_RENEGOTIATION);
        return MSG_PROCESS_FINISHED_READING;
    }
    if (SSL_IS_DTLS(s))
        SSL_renegotiate(s);
    else
        SSL_renegotiate_abbreviated(s);

    return MSG_PROCESS_FINISHED_READING;
}
