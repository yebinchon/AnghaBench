
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int csub; int ctype; int nval; } ;
typedef int Node ;
typedef TYPE_1__ Cell ;
typedef scalar_t__ Awkfloat ;


 int CFLD ;
 int FATAL (char*,char*,...) ;
 scalar_t__ INT_MAX ;
 int OCELL ;
 TYPE_1__* execute (int *) ;
 TYPE_1__* fieldadr (int) ;
 scalar_t__ getfval (TYPE_1__*) ;
 char* getsval (TYPE_1__*) ;
 int is_number (char*) ;
 int tempfree (TYPE_1__*) ;

Cell *indirect(Node **a, int n)
{
 Awkfloat val;
 Cell *x;
 int m;
 char *s;

 x = execute(a[0]);
 val = getfval(x);
 if ((Awkfloat)INT_MAX < val)
  FATAL("trying to access out of range field %s", x->nval);
 m = (int) val;
 if (m == 0 && !is_number(s = getsval(x)))
  FATAL("illegal field $(%s), name \"%s\"", s, x->nval);

 tempfree(x);
 x = fieldadr(m);
 x->ctype = OCELL;
 x->csub = CFLD;
 return(x);
}
