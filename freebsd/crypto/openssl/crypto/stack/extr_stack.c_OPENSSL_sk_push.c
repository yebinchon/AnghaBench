
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num; } ;
typedef TYPE_1__ OPENSSL_STACK ;


 int OPENSSL_sk_insert (TYPE_1__*,void const*,int ) ;

int OPENSSL_sk_push(OPENSSL_STACK *st, const void *data)
{
    if (st == ((void*)0))
        return -1;
    return OPENSSL_sk_insert(st, data, st->num);
}
