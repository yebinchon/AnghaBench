
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num; int ** data; } ;
typedef int (* OPENSSL_sk_freefunc ) (char*) ;
typedef TYPE_1__ OPENSSL_STACK ;


 int OPENSSL_sk_free (TYPE_1__*) ;

void OPENSSL_sk_pop_free(OPENSSL_STACK *st, OPENSSL_sk_freefunc func)
{
    int i;

    if (st == ((void*)0))
        return;
    for (i = 0; i < st->num; i++)
        if (st->data[i] != ((void*)0))
            func((char *)st->data[i]);
    OPENSSL_sk_free(st);
}
