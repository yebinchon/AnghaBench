
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int options; int renegotiate; int new_session; TYPE_1__* method; } ;
struct TYPE_6__ {int (* ssl_renegotiate ) (TYPE_2__*) ;} ;
typedef TYPE_2__ SSL ;


 int SSL_F_SSL_RENEGOTIATE ;
 scalar_t__ SSL_IS_TLS13 (TYPE_2__*) ;
 int SSL_OP_NO_RENEGOTIATION ;
 int SSL_R_NO_RENEGOTIATION ;
 int SSL_R_WRONG_SSL_VERSION ;
 int SSLerr (int ,int ) ;
 int stub1 (TYPE_2__*) ;

int SSL_renegotiate(SSL *s)
{
    if (SSL_IS_TLS13(s)) {
        SSLerr(SSL_F_SSL_RENEGOTIATE, SSL_R_WRONG_SSL_VERSION);
        return 0;
    }

    if ((s->options & SSL_OP_NO_RENEGOTIATION)) {
        SSLerr(SSL_F_SSL_RENEGOTIATE, SSL_R_NO_RENEGOTIATION);
        return 0;
    }

    s->renegotiate = 1;
    s->new_session = 1;

    return s->method->ssl_renegotiate(s);
}
