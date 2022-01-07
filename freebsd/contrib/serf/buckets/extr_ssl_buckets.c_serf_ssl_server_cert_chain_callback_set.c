
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int serf_ssl_server_cert_chain_cb_t ;
typedef int serf_ssl_need_server_cert_t ;
struct TYPE_3__ {void* server_cert_userdata; int server_cert_chain_callback; int server_cert_callback; } ;
typedef TYPE_1__ serf_ssl_context_t ;



void serf_ssl_server_cert_chain_callback_set(
    serf_ssl_context_t *context,
    serf_ssl_need_server_cert_t cert_callback,
    serf_ssl_server_cert_chain_cb_t cert_chain_callback,
    void *data)
{
    context->server_cert_callback = cert_callback;
    context->server_cert_chain_callback = cert_chain_callback;
    context->server_cert_userdata = data;
}
