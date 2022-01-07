
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nargs; int ** args; TYPE_1__* fcncell; } ;
struct TYPE_3__ {int nval; } ;
typedef int Node ;
typedef int Cell ;


 int FATAL (char*,int,int ) ;
 int dprintf (char*) ;
 TYPE_2__* fp ;
 int ptoi (int *) ;

Cell *arg(Node **a, int n)
{

 n = ptoi(a[0]);
    dprintf( ("arg(%d), fp->nargs=%d\n", n, fp->nargs) );
 if (n+1 > fp->nargs)
  FATAL("argument #%d of function %s was not supplied",
   n+1, fp->fcncell->nval);
 return fp->args[n];
}
