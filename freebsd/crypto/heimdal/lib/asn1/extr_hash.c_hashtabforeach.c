
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* ptr; struct TYPE_6__* next; } ;
struct TYPE_5__ {size_t sz; TYPE_2__** tab; } ;
typedef TYPE_1__ Hashtab ;
typedef TYPE_2__ Hashentry ;


 int assert (TYPE_1__*) ;
 int stub1 (void*,void*) ;

void
hashtabforeach(Hashtab * htab, int (*func) (void *ptr, void *arg),
        void *arg)
{
    Hashentry **h, *g;

    assert(htab);

    for (h = htab->tab; h < &htab->tab[htab->sz]; ++h)
 for (g = *h; g; g = g->next)
     if ((*func) (g->ptr, arg))
  return;
}
