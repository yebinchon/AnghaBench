
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* method; } ;
typedef int SSL_METHOD ;
typedef TYPE_1__ SSL ;



const SSL_METHOD *SSL_get_ssl_method(const SSL *s)
{
    return s->method;
}
