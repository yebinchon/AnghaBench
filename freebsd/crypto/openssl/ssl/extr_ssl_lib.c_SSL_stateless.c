
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ cookieok; } ;
struct TYPE_10__ {scalar_t__ hello_retry_request; TYPE_2__ ext; TYPE_1__* s3; } ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_3__ SSL ;


 int ERR_clear_error () ;
 scalar_t__ SSL_HRR_PENDING ;
 int SSL_accept (TYPE_3__*) ;
 int SSL_clear (TYPE_3__*) ;
 int TLS1_FLAGS_STATELESS ;
 int ossl_statem_in_error (TYPE_3__*) ;

int SSL_stateless(SSL *s)
{
    int ret;


    if (!SSL_clear(s))
        return 0;

    ERR_clear_error();

    s->s3->flags |= TLS1_FLAGS_STATELESS;
    ret = SSL_accept(s);
    s->s3->flags &= ~TLS1_FLAGS_STATELESS;

    if (ret > 0 && s->ext.cookieok)
        return 1;

    if (s->hello_retry_request == SSL_HRR_PENDING && !ossl_statem_in_error(s))
        return 0;

    return -1;
}
