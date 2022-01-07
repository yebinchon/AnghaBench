
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Cell ;
typedef double Awkfloat ;




 int FATAL (char*,...) ;






 double errcheck (int ,char*) ;
 int * execute (int *) ;
 double getfval (int *) ;
 int * gettemp () ;
 double ipow (double,int) ;
 double modf (double,double*) ;
 int pow (double,double) ;
 int setfval (int *,double) ;
 int tempfree (int *) ;

Cell *arith(Node **a, int n)
{
 Awkfloat i, j = 0;
 double v;
 Cell *x, *y, *z;

 x = execute(a[0]);
 i = getfval(x);
 tempfree(x);
 if (n != 129 && n != 128) {
  y = execute(a[1]);
  j = getfval(y);
  tempfree(y);
 }
 z = gettemp();
 switch (n) {
 case 135:
  i += j;
  break;
 case 133:
  i -= j;
  break;
 case 131:
  i *= j;
  break;
 case 134:
  if (j == 0)
   FATAL("division by zero");
  i /= j;
  break;
 case 132:
  if (j == 0)
   FATAL("division by zero in mod");
  modf(i/j, &v);
  i = i - j * v;
  break;
 case 129:
  i = -i;
  break;
    case 128:
  break;
 case 130:
  if (j >= 0 && modf(j, &v) == 0.0)
   i = ipow(i, (int) j);
  else
   i = errcheck(pow(i, j), "pow");
  break;
 default:
  FATAL("illegal arithmetic operator %d", n);
 }
 setfval(z, i);
 return(z);
}
