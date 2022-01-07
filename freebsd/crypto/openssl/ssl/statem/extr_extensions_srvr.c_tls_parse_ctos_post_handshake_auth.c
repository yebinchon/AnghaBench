
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_4__ {int post_handshake_auth; } ;
typedef TYPE_1__ SSL ;
typedef int PACKET ;


 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_F_TLS_PARSE_CTOS_POST_HANDSHAKE_AUTH ;
 int SSL_PHA_EXT_RECEIVED ;
 int SSL_R_POST_HANDSHAKE_AUTH_ENCODING_ERR ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;

int tls_parse_ctos_post_handshake_auth(SSL *s, PACKET *pkt, unsigned int context,
                                       X509 *x, size_t chainidx)
{
    if (PACKET_remaining(pkt) != 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_POST_HANDSHAKE_AUTH,
                 SSL_R_POST_HANDSHAKE_AUTH_ENCODING_ERR);
        return 0;
    }

    s->post_handshake_auth = SSL_PHA_EXT_RECEIVED;

    return 1;
}
