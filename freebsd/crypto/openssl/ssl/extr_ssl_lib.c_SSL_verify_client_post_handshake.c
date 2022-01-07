
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int post_handshake_auth; int server; } ;
typedef TYPE_1__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE ;
 int SSL_IS_TLS13 (TYPE_1__*) ;





 int SSL_R_EXTENSION_NOT_RECEIVED ;
 int SSL_R_INVALID_CONFIG ;
 int SSL_R_NOT_SERVER ;
 int SSL_R_REQUEST_PENDING ;
 int SSL_R_REQUEST_SENT ;
 int SSL_R_STILL_IN_INIT ;
 int SSL_R_WRONG_SSL_VERSION ;
 int SSL_is_init_finished (TYPE_1__*) ;
 int SSLerr (int ,int ) ;
 int ossl_statem_set_in_init (TYPE_1__*,int) ;
 int send_certificate_request (TYPE_1__*) ;

int SSL_verify_client_post_handshake(SSL *ssl)
{
    if (!SSL_IS_TLS13(ssl)) {
        SSLerr(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, SSL_R_WRONG_SSL_VERSION);
        return 0;
    }
    if (!ssl->server) {
        SSLerr(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, SSL_R_NOT_SERVER);
        return 0;
    }

    if (!SSL_is_init_finished(ssl)) {
        SSLerr(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, SSL_R_STILL_IN_INIT);
        return 0;
    }

    switch (ssl->post_handshake_auth) {
    case 130:
        SSLerr(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, SSL_R_EXTENSION_NOT_RECEIVED);
        return 0;
    default:
    case 131:
        SSLerr(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, ERR_R_INTERNAL_ERROR);
        return 0;
    case 132:
        break;
    case 128:
        SSLerr(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, SSL_R_REQUEST_PENDING);
        return 0;
    case 129:
        SSLerr(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, SSL_R_REQUEST_SENT);
        return 0;
    }

    ssl->post_handshake_auth = 128;


    if (!send_certificate_request(ssl)) {
        ssl->post_handshake_auth = 132;
        SSLerr(SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, SSL_R_INVALID_CONFIG);
        return 0;
    }

    ossl_statem_set_in_init(ssl, 1);
    return 1;
}
