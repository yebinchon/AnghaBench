
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int recv_max_early_data; } ;
typedef TYPE_1__ SSL ;



int SSL_set_recv_max_early_data(SSL *s, uint32_t recv_max_early_data)
{
    s->recv_max_early_data = recv_max_early_data;

    return 1;
}
