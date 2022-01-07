
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Cell ;




 int FATAL (char*,int) ;
 int * False ;

 int * True ;
 int * execute (int *) ;
 int istrue (int *) ;
 int tempfree (int *) ;

Cell *boolop(Node **a, int n)
{
 Cell *x, *y;
 int i;

 x = execute(a[0]);
 i = istrue(x);
 tempfree(x);
 switch (n) {
 case 129:
  if (i) return(True);
  y = execute(a[1]);
  i = istrue(y);
  tempfree(y);
  if (i) return(True);
  else return(False);
 case 130:
  if ( !i ) return(False);
  y = execute(a[1]);
  i = istrue(y);
  tempfree(y);
  if (i) return(True);
  else return(False);
 case 128:
  if (i) return(False);
  else return(True);
 default:
  FATAL("unknown boolean operator %d", n);
 }
 return 0;
}
