
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* method; int * s3; } ;
struct TYPE_6__ {int (* ssl_clear ) (TYPE_2__*) ;} ;
typedef int SSL3_STATE ;
typedef TYPE_2__ SSL ;


 int * OPENSSL_zalloc (int) ;
 int SSL_SRP_CTX_init (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

int ssl3_new(SSL *s)
{
    SSL3_STATE *s3;

    if ((s3 = OPENSSL_zalloc(sizeof(*s3))) == ((void*)0))
        goto err;
    s->s3 = s3;


    if (!SSL_SRP_CTX_init(s))
        goto err;


    if (!s->method->ssl_clear(s))
        return 0;

    return 1;
 err:
    return 0;
}
