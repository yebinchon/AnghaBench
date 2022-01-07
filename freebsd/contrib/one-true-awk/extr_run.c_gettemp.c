
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* cnext; } ;
typedef TYPE_1__ Cell ;


 int FATAL (char*) ;
 scalar_t__ calloc (int,int) ;
 TYPE_1__ tempcell ;
 TYPE_1__* tmps ;

Cell *gettemp(void)
{ int i;
 Cell *x;

 if (!tmps) {
  tmps = (Cell *) calloc(100, sizeof(Cell));
  if (!tmps)
   FATAL("out of space for temporaries");
  for(i = 1; i < 100; i++)
   tmps[i-1].cnext = &tmps[i];
  tmps[i-1].cnext = ((void*)0);
 }
 x = tmps;
 tmps = x->cnext;
 *x = tempcell;
 return(x);
}
