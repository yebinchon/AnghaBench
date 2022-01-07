
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__** tab; int size; } ;
struct TYPE_5__ {int nval; struct TYPE_5__* cnext; } ;
typedef TYPE_1__ Cell ;
typedef TYPE_2__ Array ;


 int hash (char const*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;

Cell *lookup(const char *s, Array *tp)
{
 Cell *p;
 int h;

 h = hash(s, tp->size);
 for (p = tp->tab[h]; p != ((void*)0); p = p->cnext)
  if (strcmp(s, p->nval) == 0)
   return(p);
 return(((void*)0));
}
