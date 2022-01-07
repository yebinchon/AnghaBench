
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* items; } ;
typedef TYPE_1__ pqueue ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ pitem ;



pitem *pqueue_pop(pqueue *pq)
{
    pitem *item = pq->items;

    if (pq->items != ((void*)0))
        pq->items = pq->items->next;

    return item;
}
