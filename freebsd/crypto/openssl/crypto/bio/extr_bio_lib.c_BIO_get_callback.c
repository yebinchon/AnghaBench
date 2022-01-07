
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int callback; } ;
typedef int BIO_callback_fn ;
typedef TYPE_1__ BIO ;



BIO_callback_fn BIO_get_callback(const BIO *b)
{
    return b->callback;
}
