
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cb_arg; } ;
typedef TYPE_1__ BIO ;



void BIO_set_callback_arg(BIO *b, char *arg)
{
    b->cb_arg = arg;
}
