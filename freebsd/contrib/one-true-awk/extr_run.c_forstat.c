
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Cell ;


 int * True ;
 int * execute (int *) ;
 scalar_t__ isbreak (int *) ;
 scalar_t__ isexit (int *) ;
 scalar_t__ isnext (int *) ;
 scalar_t__ isret (int *) ;
 int istrue (int *) ;
 int tempfree (int *) ;

Cell *forstat(Node **a, int n)
{
 Cell *x;

 x = execute(a[0]);
 tempfree(x);
 for (;;) {
  if (a[1]!=((void*)0)) {
   x = execute(a[1]);
   if (!istrue(x)) return(x);
   else tempfree(x);
  }
  x = execute(a[3]);
  if (isbreak(x))
   return True;
  if (isnext(x) || isexit(x) || isret(x))
   return(x);
  tempfree(x);
  x = execute(a[2]);
  tempfree(x);
 }
}
