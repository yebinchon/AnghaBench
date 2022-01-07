
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int verify_mode; scalar_t__ post_handshake_auth; int certreqs_sent; TYPE_3__* s3; } ;
struct TYPE_8__ {TYPE_1__* new_cipher; } ;
struct TYPE_9__ {TYPE_2__ tmp; } ;
struct TYPE_7__ {int algorithm_auth; } ;
typedef TYPE_4__ SSL ;


 int SSL_IS_TLS13 (TYPE_4__*) ;
 scalar_t__ SSL_PHA_REQUEST_PENDING ;
 int SSL_VERIFY_CLIENT_ONCE ;
 int SSL_VERIFY_FAIL_IF_NO_PEER_CERT ;
 int SSL_VERIFY_PEER ;
 int SSL_VERIFY_POST_HANDSHAKE ;
 int SSL_aNULL ;
 int SSL_aPSK ;
 int SSL_aSRP ;

int send_certificate_request(SSL *s)
{
    if (

           s->verify_mode & SSL_VERIFY_PEER




           && (!SSL_IS_TLS13(s) || !(s->verify_mode & SSL_VERIFY_POST_HANDSHAKE)
               || s->post_handshake_auth == SSL_PHA_REQUEST_PENDING)




           && (s->certreqs_sent < 1 ||
               !(s->verify_mode & SSL_VERIFY_CLIENT_ONCE))





           && (!(s->s3->tmp.new_cipher->algorithm_auth & SSL_aNULL)





               || (s->verify_mode & SSL_VERIFY_FAIL_IF_NO_PEER_CERT))

           && !(s->s3->tmp.new_cipher->algorithm_auth & SSL_aSRP)




           && !(s->s3->tmp.new_cipher->algorithm_auth & SSL_aPSK)) {
        return 1;
    }

    return 0;
}
