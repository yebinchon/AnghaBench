
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* d1; } ;
struct TYPE_5__ {size_t cookie_len; int cookie; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;
typedef int MSG_PROCESS_RETURN ;


 int MSG_PROCESS_ERROR ;
 int MSG_PROCESS_FINISHED_READING ;
 int PACKET_copy_bytes (int *,int ,size_t) ;
 int PACKET_forward (int *,int) ;
 int PACKET_get_length_prefixed_1 (int *,int *) ;
 size_t PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_F_DTLS_PROCESS_HELLO_VERIFY ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_R_LENGTH_TOO_LONG ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;

MSG_PROCESS_RETURN dtls_process_hello_verify(SSL *s, PACKET *pkt)
{
    size_t cookie_len;
    PACKET cookiepkt;

    if (!PACKET_forward(pkt, 2)
        || !PACKET_get_length_prefixed_1(pkt, &cookiepkt)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_DTLS_PROCESS_HELLO_VERIFY,
                 SSL_R_LENGTH_MISMATCH);
        return MSG_PROCESS_ERROR;
    }

    cookie_len = PACKET_remaining(&cookiepkt);
    if (cookie_len > sizeof(s->d1->cookie)) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_DTLS_PROCESS_HELLO_VERIFY,
                 SSL_R_LENGTH_TOO_LONG);
        return MSG_PROCESS_ERROR;
    }

    if (!PACKET_copy_bytes(&cookiepkt, s->d1->cookie, cookie_len)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_DTLS_PROCESS_HELLO_VERIFY,
                 SSL_R_LENGTH_MISMATCH);
        return MSG_PROCESS_ERROR;
    }
    s->d1->cookie_len = cookie_len;

    return MSG_PROCESS_FINISHED_READING;
}
