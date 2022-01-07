
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* cnext; int sval; int tval; int nval; } ;
typedef TYPE_1__ Cell ;


 int FATAL (char*) ;
 int NN (int ) ;
 int dprintf (char*) ;
 scalar_t__ freeable (TYPE_1__*) ;
 TYPE_1__* tmps ;
 int xfree (int ) ;

void tfree(Cell *a)
{
 if (freeable(a)) {
     dprintf( ("freeing %s %s %o\n", NN(a->nval), NN(a->sval), a->tval) );
  xfree(a->sval);
 }
 if (a == tmps)
  FATAL("tempcell list is curdled");
 a->cnext = tmps;
 tmps = a;
}
