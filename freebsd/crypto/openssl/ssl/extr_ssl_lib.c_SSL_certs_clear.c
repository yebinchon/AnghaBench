
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cert; } ;
typedef TYPE_1__ SSL ;


 int ssl_cert_clear_certs (int ) ;

void SSL_certs_clear(SSL *s)
{
    ssl_cert_clear_certs(s->cert);
}
