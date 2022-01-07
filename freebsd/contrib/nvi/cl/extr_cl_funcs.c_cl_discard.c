
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int coff; int roff; int cols; int rows; int * cl_private; } ;
typedef TYPE_1__ SCR ;
typedef int CL_PRIVATE ;


 int * CLP (TYPE_1__*) ;
 scalar_t__ CLSP (TYPE_1__*) ;
 int CL_LAYOUT ;
 int F_SET (int *,int ) ;
 int delwin (scalar_t__) ;
 int stdscr ;
 int * subwin (int ,int ,int ,int ,int ) ;

int
cl_discard(SCR *discardp, SCR **acquirep)
{
 CL_PRIVATE *clp;
 SCR* tsp;

 if (discardp) {
     clp = CLP(discardp);
     F_SET(clp, CL_LAYOUT);

     if (CLSP(discardp)) {
      delwin(CLSP(discardp));
      discardp->cl_private = ((void*)0);
     }
 }


 if (!acquirep)
  return 0;

 for (; (tsp = *acquirep) != ((void*)0); ++acquirep) {
  clp = CLP(tsp);
  F_SET(clp, CL_LAYOUT);

  if (CLSP(tsp))
   delwin(CLSP(tsp));
  tsp->cl_private = subwin(stdscr, tsp->rows, tsp->cols,
        tsp->roff, tsp->coff);
 }


 return (0);
}
