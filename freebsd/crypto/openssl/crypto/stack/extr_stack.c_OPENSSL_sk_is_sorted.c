
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sorted; } ;
typedef TYPE_1__ OPENSSL_STACK ;



int OPENSSL_sk_is_sorted(const OPENSSL_STACK *st)
{
    return st == ((void*)0) ? 1 : st->sorted;
}
