
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; TYPE_1__** tab; } ;
struct TYPE_5__ {struct TYPE_5__* cnext; int nval; } ;
typedef TYPE_1__ Cell ;
typedef TYPE_2__ Array ;


 int GROWTAB ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__**) ;
 int hash (int ,int) ;

void rehash(Array *tp)
{
 int i, nh, nsz;
 Cell *cp, *op, **np;

 nsz = GROWTAB * tp->size;
 np = (Cell **) calloc(nsz, sizeof(Cell *));
 if (np == ((void*)0))
  return;
 for (i = 0; i < tp->size; i++) {
  for (cp = tp->tab[i]; cp; cp = op) {
   op = cp->cnext;
   nh = hash(cp->nval, nsz);
   cp->cnext = np[nh];
   np[nh] = cp;
  }
 }
 free(tp->tab);
 tp->tab = np;
 tp->size = nsz;
}
