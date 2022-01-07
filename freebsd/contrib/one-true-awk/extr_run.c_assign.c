
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int tval; double fval; } ;
typedef int Node ;
typedef TYPE_1__ Cell ;
typedef double Awkfloat ;



 int ASSIGN ;

 int FATAL (char*,...) ;
 int FLD ;


 int NUM ;

 int REC ;
 int STR ;

 double errcheck (int ,char*) ;
 TYPE_1__* execute (int *) ;
 int funnyvar (TYPE_1__*,char*) ;
 double getfval (TYPE_1__*) ;
 int getsval (TYPE_1__*) ;
 double ipow (double,int) ;
 scalar_t__ isnum (TYPE_1__*) ;
 scalar_t__ isstr (TYPE_1__*) ;
 double modf (double,double*) ;
 TYPE_1__* nfloc ;
 int pow (double,double) ;
 int setfval (TYPE_1__*,double) ;
 int setsval (TYPE_1__*,int ) ;
 int tempfree (TYPE_1__*) ;

Cell *assign(Node **a, int n)
{
 Cell *x, *y;
 Awkfloat xf, yf;
 double v;

 y = execute(a[1]);
 x = execute(a[0]);
 if (n == ASSIGN) {
  if (x == y && !(x->tval & (FLD|REC)) && x != nfloc)
   ;
  else if ((y->tval & (STR|NUM)) == (STR|NUM)) {
   setsval(x, getsval(y));
   x->fval = getfval(y);
   x->tval |= NUM;
  }
  else if (isstr(y))
   setsval(x, getsval(y));
  else if (isnum(y))
   setfval(x, getfval(y));
  else
   funnyvar(y, "read value of");
  tempfree(y);
  return(x);
 }
 xf = getfval(x);
 yf = getfval(y);
 switch (n) {
 case 133:
  xf += yf;
  break;
 case 128:
  xf -= yf;
  break;
 case 130:
  xf *= yf;
  break;
 case 132:
  if (yf == 0)
   FATAL("division by zero in /=");
  xf /= yf;
  break;
 case 131:
  if (yf == 0)
   FATAL("division by zero in %%=");
  modf(xf/yf, &v);
  xf = xf - yf * v;
  break;
 case 129:
  if (yf >= 0 && modf(yf, &v) == 0.0)
   xf = ipow(xf, (int) yf);
  else
   xf = errcheck(pow(xf, yf), "pow");
  break;
 default:
  FATAL("illegal assignment operator %d", n);
  break;
 }
 tempfree(y);
 setfval(x, xf);
 return(x);
}
