
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t num_tickets; } ;
typedef TYPE_1__ SSL ;



size_t SSL_get_num_tickets(const SSL *s)
{
    return s->num_tickets;
}
