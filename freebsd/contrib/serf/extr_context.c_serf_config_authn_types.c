
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int authn_types; } ;
typedef TYPE_1__ serf_context_t ;



void serf_config_authn_types(serf_context_t *ctx,
                             int authn_types)
{
    ctx->authn_types = authn_types;
}
