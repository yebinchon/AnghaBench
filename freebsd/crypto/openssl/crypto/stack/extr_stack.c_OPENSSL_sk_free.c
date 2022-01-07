
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; } ;
typedef TYPE_1__ OPENSSL_STACK ;


 int OPENSSL_free (TYPE_1__*) ;

void OPENSSL_sk_free(OPENSSL_STACK *st)
{
    if (st == ((void*)0))
        return;
    OPENSSL_free(st->data);
    OPENSSL_free(st);
}
