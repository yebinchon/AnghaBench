
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* clienthello; } ;
struct TYPE_4__ {unsigned int legacy_version; } ;
typedef TYPE_2__ SSL ;



unsigned int SSL_client_hello_get0_legacy_version(SSL *s)
{
    if (s->clienthello == ((void*)0))
        return 0;
    return s->clienthello->legacy_version;
}
