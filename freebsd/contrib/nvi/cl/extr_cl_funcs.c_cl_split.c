
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int coff; int roff; int cols; int rows; void* cl_private; } ;
typedef TYPE_1__ SCR ;
typedef int CL_PRIVATE ;


 int * CLP (TYPE_1__*) ;
 scalar_t__ CLSP (TYPE_1__*) ;
 int CL_LAYOUT ;
 int F_SET (int *,int ) ;
 int delwin (scalar_t__) ;
 int stdscr ;
 void* subwin (int ,int ,int ,int ,int ) ;

int
cl_split(SCR *origp, SCR *newp)
{
 CL_PRIVATE *clp;

 clp = CLP(origp);
 F_SET(clp, CL_LAYOUT);

 if (CLSP(origp))
  delwin(CLSP(origp));

 origp->cl_private = subwin(stdscr, origp->rows, origp->cols,
         origp->roff, origp->coff);
 newp->cl_private = subwin(stdscr, newp->rows, newp->cols,
         newp->roff, newp->coff);


 return (0);
}
