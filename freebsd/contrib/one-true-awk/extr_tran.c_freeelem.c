
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nelem; TYPE_1__** tab; int size; } ;
struct TYPE_7__ {struct TYPE_7__* nval; scalar_t__ sval; struct TYPE_7__* cnext; } ;
typedef TYPE_1__ Cell ;
typedef TYPE_2__ Array ;


 int free (TYPE_1__*) ;
 scalar_t__ freeable (TYPE_1__*) ;
 int hash (char const*,int ) ;
 scalar_t__ strcmp (char const*,TYPE_1__*) ;
 int xfree (scalar_t__) ;

void freeelem(Cell *ap, const char *s)
{
 Array *tp;
 Cell *p, *prev = ((void*)0);
 int h;

 tp = (Array *) ap->sval;
 h = hash(s, tp->size);
 for (p = tp->tab[h]; p != ((void*)0); prev = p, p = p->cnext)
  if (strcmp(s, p->nval) == 0) {
   if (prev == ((void*)0))
    tp->tab[h] = p->cnext;
   else
    prev->cnext = p->cnext;
   if (freeable(p))
    xfree(p->sval);
   free(p->nval);
   free(p);
   tp->nelem--;
   return;
  }
}
