
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* method; } ;
struct TYPE_4__ {long (* get_timeout ) () ;} ;
typedef TYPE_2__ SSL ;


 long stub1 () ;

long SSL_get_default_timeout(const SSL *s)
{
    return s->method->get_timeout();
}
