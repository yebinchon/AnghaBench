
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Cell ;
typedef scalar_t__ Awkfloat ;


 int POSTINCR ;
 int PREDECR ;
 int PREINCR ;
 int * execute (int *) ;
 scalar_t__ getfval (int *) ;
 int * gettemp () ;
 int setfval (int *,scalar_t__) ;
 int tempfree (int *) ;

Cell *incrdecr(Node **a, int n)
{
 Cell *x, *z;
 int k;
 Awkfloat xf;

 x = execute(a[0]);
 xf = getfval(x);
 k = (n == PREINCR || n == POSTINCR) ? 1 : -1;
 if (n == PREINCR || n == PREDECR) {
  setfval(x, xf + k);
  return(x);
 }
 z = gettemp();
 setfval(z, xf);
 setfval(x, xf + k);
 tempfree(x);
 return(z);
}
