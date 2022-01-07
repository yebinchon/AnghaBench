
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int callback_ex; } ;
typedef int BIO_callback_fn_ex ;
typedef TYPE_1__ BIO ;



BIO_callback_fn_ex BIO_get_callback_ex(const BIO *b)
{
    return b->callback_ex;
}
