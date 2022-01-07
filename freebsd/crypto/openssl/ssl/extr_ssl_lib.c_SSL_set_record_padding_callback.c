
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t (* record_padding_cb ) (TYPE_1__*,int,size_t,void*) ;} ;
typedef TYPE_1__ SSL ;



void SSL_set_record_padding_callback(SSL *ssl,
                                     size_t (*cb) (SSL *ssl, int type,
                                                   size_t len, void *arg))
{
    ssl->record_padding_cb = cb;
}
