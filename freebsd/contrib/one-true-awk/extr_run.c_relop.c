
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int tval; scalar_t__ fval; } ;
typedef int Node ;
typedef TYPE_1__ Cell ;
typedef scalar_t__ Awkfloat ;



 int FATAL (char*,int) ;
 TYPE_1__* False ;





 int NUM ;
 TYPE_1__* True ;
 TYPE_1__* execute (int *) ;
 int getsval (TYPE_1__*) ;
 int strcoll (int ,int ) ;
 int tempfree (TYPE_1__*) ;

Cell *relop(Node **a, int n)
{
 int i;
 Cell *x, *y;
 Awkfloat j;

 x = execute(a[0]);
 y = execute(a[1]);
 if (x->tval&NUM && y->tval&NUM) {
  j = x->fval - y->fval;
  i = j<0? -1: (j>0? 1: 0);
 } else {
  i = strcoll(getsval(x), getsval(y));
 }
 tempfree(x);
 tempfree(y);
 switch (n) {
 case 129: if (i<0) return(True);
   else return(False);
 case 130: if (i<=0) return(True);
   else return(False);
 case 128: if (i!=0) return(True);
   else return(False);
 case 133: if (i == 0) return(True);
   else return(False);
 case 132: if (i>=0) return(True);
   else return(False);
 case 131: if (i>0) return(True);
   else return(False);
 default:
  FATAL("unknown relational operator %d", n);
 }
 return 0;
}
