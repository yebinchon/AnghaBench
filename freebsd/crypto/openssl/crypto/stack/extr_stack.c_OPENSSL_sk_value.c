
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; scalar_t__* data; } ;
typedef TYPE_1__ OPENSSL_STACK ;



void *OPENSSL_sk_value(const OPENSSL_STACK *st, int i)
{
    if (st == ((void*)0) || i < 0 || i >= st->num)
        return ((void*)0);
    return (void *)st->data[i];
}
