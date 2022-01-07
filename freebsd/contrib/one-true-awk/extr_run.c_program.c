
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Cell ;


 int FATAL (char*) ;
 int * True ;
 int env ;
 int * execute (int *) ;
 scalar_t__ getrec (int *,int *,int) ;
 scalar_t__ isbreak (int *) ;
 scalar_t__ iscont (int *) ;
 scalar_t__ isexit (int *) ;
 scalar_t__ isjump (int *) ;
 scalar_t__ isnext (int *) ;
 int record ;
 int recsize ;
 scalar_t__ setjmp (int ) ;
 int tempfree (int *) ;

Cell *program(Node **a, int n)
{
 Cell *x;

 if (setjmp(env) != 0)
  goto ex;
 if (a[0]) {
  x = execute(a[0]);
  if (isexit(x))
   return(True);
  if (isjump(x))
   FATAL("illegal break, continue, next or nextfile from BEGIN");
  tempfree(x);
 }
 if (a[1] || a[2])
  while (getrec(&record, &recsize, 1) > 0) {
   x = execute(a[1]);
   if (isexit(x))
    break;
   tempfree(x);
  }
  ex:
 if (setjmp(env) != 0)
  goto ex1;
 if (a[2]) {
  x = execute(a[2]);
  if (isbreak(x) || isnext(x) || iscont(x))
   FATAL("illegal break, continue, next or nextfile from END");
  tempfree(x);
 }
  ex1:
 return(True);
}
