
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t num_tickets; } ;
typedef TYPE_1__ SSL_CTX ;



size_t SSL_CTX_get_num_tickets(const SSL_CTX *ctx)
{
    return ctx->num_tickets;
}
