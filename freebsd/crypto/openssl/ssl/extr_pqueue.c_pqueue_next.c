
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* piterator ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ pitem ;



pitem *pqueue_next(piterator *item)
{
    pitem *ret;

    if (item == ((void*)0) || *item == ((void*)0))
        return ((void*)0);


    ret = *item;
    *item = (*item)->next;

    return ret;
}
