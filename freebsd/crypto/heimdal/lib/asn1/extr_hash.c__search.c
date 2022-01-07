
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ptr; struct TYPE_6__* next; } ;
struct TYPE_5__ {size_t (* hash ) (void*) ;size_t sz; scalar_t__ (* cmp ) (void*,int ) ;TYPE_2__** tab; } ;
typedef TYPE_1__ Hashtab ;
typedef TYPE_2__ Hashentry ;


 int assert (int) ;
 size_t stub1 (void*) ;
 scalar_t__ stub2 (void*,int ) ;

__attribute__((used)) static Hashentry *
_search(Hashtab * htab, void *ptr)
{
    Hashentry *hptr;

    assert(htab && ptr);

    for (hptr = htab->tab[(*htab->hash) (ptr) % htab->sz];
  hptr;
  hptr = hptr->next)
 if ((*htab->cmp) (ptr, hptr->ptr) == 0)
     break;
    return hptr;
}
