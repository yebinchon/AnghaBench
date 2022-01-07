
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* items; } ;
typedef TYPE_1__ pqueue ;
struct TYPE_7__ {struct TYPE_7__* next; int priority; } ;
typedef TYPE_2__ pitem ;


 int memcmp (int ,int ,int) ;

pitem *pqueue_insert(pqueue *pq, pitem *item)
{
    pitem *curr, *next;

    if (pq->items == ((void*)0)) {
        pq->items = item;
        return item;
    }

    for (curr = ((void*)0), next = pq->items;
         next != ((void*)0); curr = next, next = next->next) {



        int cmp = memcmp(next->priority, item->priority, 8);
        if (cmp > 0) {
            item->next = next;

            if (curr == ((void*)0))
                pq->items = item;
            else
                curr->next = item;

            return item;
        }

        else if (cmp == 0)
            return ((void*)0);
    }

    item->next = ((void*)0);
    curr->next = item;

    return item;
}
