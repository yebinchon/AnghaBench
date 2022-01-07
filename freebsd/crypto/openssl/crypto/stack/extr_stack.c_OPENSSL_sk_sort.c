
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sorted; int num; int * comp; int data; } ;
typedef TYPE_1__ OPENSSL_STACK ;


 int qsort (int ,int,int,int *) ;

void OPENSSL_sk_sort(OPENSSL_STACK *st)
{
    if (st != ((void*)0) && !st->sorted && st->comp != ((void*)0)) {
        if (st->num > 1)
            qsort(st->data, st->num, sizeof(void *), st->comp);
        st->sorted = 1;
    }
}
