
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num; } ;
typedef TYPE_1__ OPENSSL_STACK ;


 void* internal_delete (TYPE_1__*,int ) ;

void *OPENSSL_sk_shift(OPENSSL_STACK *st)
{
    if (st == ((void*)0) || st->num == 0)
        return ((void*)0);
    return internal_delete(st, 0);
}
