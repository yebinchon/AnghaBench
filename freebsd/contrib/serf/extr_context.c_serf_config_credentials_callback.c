
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int serf_credentials_callback_t ;
struct TYPE_3__ {int cred_cb; } ;
typedef TYPE_1__ serf_context_t ;



void serf_config_credentials_callback(serf_context_t *ctx,
                                      serf_credentials_callback_t cred_cb)
{
    ctx->cred_cb = cred_cb;
}
