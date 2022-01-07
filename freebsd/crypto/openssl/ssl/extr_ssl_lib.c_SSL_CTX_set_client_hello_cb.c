
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* client_hello_cb_arg; int client_hello_cb; } ;
typedef int SSL_client_hello_cb_fn ;
typedef TYPE_1__ SSL_CTX ;



void SSL_CTX_set_client_hello_cb(SSL_CTX *c, SSL_client_hello_cb_fn cb,
                                 void *arg)
{
    c->client_hello_cb = cb;
    c->client_hello_cb_arg = arg;
}
