
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ version; TYPE_1__* method; } ;
struct TYPE_5__ {scalar_t__ version; } ;
typedef TYPE_2__ SSL ;


 scalar_t__ TLS_ANY_VERSION ;
 scalar_t__ TLS_MAX_VERSION ;
 int ssl3_clear (TYPE_2__*) ;

int tls1_clear(SSL *s)
{
    if (!ssl3_clear(s))
        return 0;

    if (s->method->version == TLS_ANY_VERSION)
        s->version = TLS_MAX_VERSION;
    else
        s->version = s->method->version;

    return 1;
}
