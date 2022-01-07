
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* items; } ;
typedef TYPE_1__ pqueue ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_2__ pitem ;



size_t pqueue_size(pqueue *pq)
{
    pitem *item = pq->items;
    size_t count = 0;

    while (item != ((void*)0)) {
        count++;
        item = item->next;
    }
    return count;
}
