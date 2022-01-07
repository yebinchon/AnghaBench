
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; void const** data; scalar_t__ sorted; } ;
typedef TYPE_1__ OPENSSL_STACK ;



void *OPENSSL_sk_set(OPENSSL_STACK *st, int i, const void *data)
{
    if (st == ((void*)0) || i < 0 || i >= st->num)
        return ((void*)0);
    st->data[i] = data;
    st->sorted = 0;
    return (void *)st->data[i];
}
