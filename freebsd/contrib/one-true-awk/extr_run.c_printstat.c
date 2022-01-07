
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* nnext; } ;
typedef TYPE_1__ Node ;
typedef int FILE ;
typedef int Cell ;


 int FATAL (char*,int ) ;
 int * True ;
 int * execute (TYPE_1__*) ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int filename (int *) ;
 int fputs (int ,int *) ;
 int getpssval (int *) ;
 int getsval (int ) ;
 int ofsloc ;
 int orsloc ;
 int ptoi (TYPE_1__*) ;
 int * redirect (int ,TYPE_1__*) ;
 int * stdout ;
 int tempfree (int *) ;

Cell *printstat(Node **a, int n)
{
 Node *x;
 Cell *y;
 FILE *fp;

 if (a[1] == ((void*)0))
  fp = stdout;
 else
  fp = redirect(ptoi(a[1]), a[2]);
 for (x = a[0]; x != ((void*)0); x = x->nnext) {
  y = execute(x);
  fputs(getpssval(y), fp);
  tempfree(y);
  if (x->nnext == ((void*)0))
   fputs(getsval(orsloc), fp);
  else
   fputs(getsval(ofsloc), fp);
 }
 if (a[1] != ((void*)0))
  fflush(fp);
 if (ferror(fp))
  FATAL("write error on %s", filename(fp));
 return(True);
}
