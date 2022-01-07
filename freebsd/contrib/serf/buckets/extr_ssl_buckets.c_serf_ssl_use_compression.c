
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ssl; } ;
typedef TYPE_1__ serf_ssl_context_t ;
typedef int apr_status_t ;


 int APR_EGENERAL ;
 int APR_SUCCESS ;
 int SSL_OP_NO_COMPRESSION ;
 int SSL_clear_options (int ,int ) ;
 int SSL_set_options (int ,int ) ;

apr_status_t serf_ssl_use_compression(serf_ssl_context_t *ssl_ctx, int enabled)
{
    if (enabled) {




    } else {




    }

    return APR_EGENERAL;
}
