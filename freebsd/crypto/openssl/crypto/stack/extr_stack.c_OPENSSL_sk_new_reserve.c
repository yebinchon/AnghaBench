
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int comp; } ;
typedef int OPENSSL_sk_compfunc ;
typedef TYPE_1__ OPENSSL_STACK ;


 int OPENSSL_sk_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int sk_reserve (TYPE_1__*,int,int) ;

OPENSSL_STACK *OPENSSL_sk_new_reserve(OPENSSL_sk_compfunc c, int n)
{
    OPENSSL_STACK *st = OPENSSL_zalloc(sizeof(OPENSSL_STACK));

    if (st == ((void*)0))
        return ((void*)0);

    st->comp = c;

    if (n <= 0)
        return st;

    if (!sk_reserve(st, n, 1)) {
        OPENSSL_sk_free(st);
        return ((void*)0);
    }

    return st;
}
