
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* clienthello; } ;
struct TYPE_4__ {int isv2; } ;
typedef TYPE_2__ SSL ;



int SSL_client_hello_isv2(SSL *s)
{
    if (s->clienthello == ((void*)0))
        return 0;
    return s->clienthello->isv2;
}
