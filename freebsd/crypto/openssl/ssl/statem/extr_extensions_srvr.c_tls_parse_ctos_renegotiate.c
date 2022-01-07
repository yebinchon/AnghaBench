
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_6__ {TYPE_1__* s3; } ;
struct TYPE_5__ {unsigned int previous_client_finished_len; int send_connection_binding; int previous_client_finished; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;


 int PACKET_get_1 (int *,unsigned int*) ;
 int PACKET_get_bytes (int *,unsigned char const**,unsigned int) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_F_TLS_PARSE_CTOS_RENEGOTIATE ;
 int SSL_R_RENEGOTIATION_ENCODING_ERR ;
 int SSL_R_RENEGOTIATION_MISMATCH ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 scalar_t__ memcmp (unsigned char const*,int ,unsigned int) ;

int tls_parse_ctos_renegotiate(SSL *s, PACKET *pkt, unsigned int context,
                               X509 *x, size_t chainidx)
{
    unsigned int ilen;
    const unsigned char *data;


    if (!PACKET_get_1(pkt, &ilen)
        || !PACKET_get_bytes(pkt, &data, ilen)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_RENEGOTIATE,
                 SSL_R_RENEGOTIATION_ENCODING_ERR);
        return 0;
    }


    if (ilen != s->s3->previous_client_finished_len) {
        SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS_PARSE_CTOS_RENEGOTIATE,
                 SSL_R_RENEGOTIATION_MISMATCH);
        return 0;
    }

    if (memcmp(data, s->s3->previous_client_finished,
               s->s3->previous_client_finished_len)) {
        SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS_PARSE_CTOS_RENEGOTIATE,
                 SSL_R_RENEGOTIATION_MISMATCH);
        return 0;
    }

    s->s3->send_connection_binding = 1;

    return 1;
}
