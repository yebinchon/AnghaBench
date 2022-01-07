
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__** prev; TYPE_1__* next; struct TYPE_6__* ptr; } ;
struct TYPE_5__ {struct TYPE_5__** prev; } ;
typedef int Hashtab ;
typedef TYPE_2__ Hashentry ;


 TYPE_2__* _search (int *,void*) ;
 int assert (int) ;
 int free (TYPE_2__*) ;

int
_hashtabdel(Hashtab * htab, void *ptr, int freep)
{
    Hashentry *h;

    assert(htab && ptr);

    h = _search(htab, ptr);
    if (h) {
 if (freep)
     free(h->ptr);
 if ((*(h->prev) = h->next))
     h->next->prev = h->prev;
 free(h);
 return 0;
    } else
 return -1;
}
