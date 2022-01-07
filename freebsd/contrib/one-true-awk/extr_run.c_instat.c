
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int size; TYPE_1__** tab; } ;
struct TYPE_13__ {struct TYPE_13__* cnext; int nval; scalar_t__ sval; } ;
typedef int Node ;
typedef TYPE_1__ Cell ;
typedef TYPE_2__ Array ;


 TYPE_1__* True ;
 TYPE_1__* execute (int *) ;
 int isarr (TYPE_1__*) ;
 scalar_t__ isbreak (TYPE_1__*) ;
 scalar_t__ isexit (TYPE_1__*) ;
 scalar_t__ isnext (TYPE_1__*) ;
 scalar_t__ isret (TYPE_1__*) ;
 int setsval (TYPE_1__*,int ) ;
 int tempfree (TYPE_1__*) ;

Cell *instat(Node **a, int n)
{
 Cell *x, *vp, *arrayp, *cp, *ncp;
 Array *tp;
 int i;

 vp = execute(a[0]);
 arrayp = execute(a[1]);
 if (!isarr(arrayp)) {
  return True;
 }
 tp = (Array *) arrayp->sval;
 tempfree(arrayp);
 for (i = 0; i < tp->size; i++) {
  for (cp = tp->tab[i]; cp != ((void*)0); cp = ncp) {
   setsval(vp, cp->nval);
   ncp = cp->cnext;
   x = execute(a[2]);
   if (isbreak(x)) {
    tempfree(vp);
    return True;
   }
   if (isnext(x) || isexit(x) || isret(x)) {
    tempfree(vp);
    return(x);
   }
   tempfree(x);
  }
 }
 return True;
}
