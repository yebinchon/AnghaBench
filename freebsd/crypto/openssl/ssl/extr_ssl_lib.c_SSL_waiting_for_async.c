
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ job; } ;
typedef TYPE_1__ SSL ;



int SSL_waiting_for_async(SSL *s)
{
    if (s->job)
        return 1;

    return 0;
}
