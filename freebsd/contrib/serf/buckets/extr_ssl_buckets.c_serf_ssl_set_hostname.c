
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ssl; } ;
typedef TYPE_1__ serf_ssl_context_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int ERR_clear_error () ;
 int SSL_set_tlsext_host_name (int ,char const*) ;

apr_status_t serf_ssl_set_hostname(serf_ssl_context_t *context,
                                   const char * hostname)
{





    return APR_SUCCESS;
}
