
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* allow_early_data_cb_data; int allow_early_data_cb; } ;
typedef int SSL_allow_early_data_cb_fn ;
typedef TYPE_1__ SSL ;



void SSL_set_allow_early_data_cb(SSL *s,
                                 SSL_allow_early_data_cb_fn cb,
                                 void *arg)
{
    s->allow_early_data_cb = cb;
    s->allow_early_data_cb_data = arg;
}
