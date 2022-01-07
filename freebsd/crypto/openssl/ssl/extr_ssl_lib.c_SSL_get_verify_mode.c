
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int verify_mode; } ;
typedef TYPE_1__ SSL ;



int SSL_get_verify_mode(const SSL *s)
{
    return s->verify_mode;
}
