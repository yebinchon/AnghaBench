
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ssl; scalar_t__ ctx; } ;
typedef TYPE_1__ SSL_CONF_CTX ;


 int SSL_CTX_set_num_tickets (scalar_t__,int) ;
 int SSL_set_num_tickets (scalar_t__,int) ;
 int atoi (char const*) ;

__attribute__((used)) static int cmd_NumTickets(SSL_CONF_CTX *cctx, const char *value)
{
    int rv = 0;
    int num_tickets = atoi(value);

    if (num_tickets >= 0) {
        if (cctx->ctx)
            rv = SSL_CTX_set_num_tickets(cctx->ctx, num_tickets);
        if (cctx->ssl)
            rv = SSL_set_num_tickets(cctx->ssl, num_tickets);
    }
    return rv;
}
