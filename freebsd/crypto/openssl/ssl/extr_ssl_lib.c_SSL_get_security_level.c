
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* cert; } ;
struct TYPE_4__ {int sec_level; } ;
typedef TYPE_2__ SSL ;



int SSL_get_security_level(const SSL *s)
{
    return s->cert->sec_level;
}
