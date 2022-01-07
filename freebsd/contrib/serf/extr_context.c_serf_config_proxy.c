
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * proxy_address; } ;
typedef TYPE_1__ serf_context_t ;
typedef int apr_sockaddr_t ;



void serf_config_proxy(serf_context_t *ctx,
                       apr_sockaddr_t *address)
{
    ctx->proxy_address = address;
}
