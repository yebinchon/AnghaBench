
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tval; int fval; int sval; int nval; int csub; } ;
typedef TYPE_1__ Cell ;


 int CCOPY ;
 int CON ;
 int DONTFREE ;
 int FLD ;
 int REC ;
 TYPE_1__* gettemp () ;
 scalar_t__ isstr (TYPE_1__*) ;
 int tostring (int ) ;

Cell *copycell(Cell *x)
{
 Cell *y;



 y = gettemp();
 y->tval = x->tval & ~(CON|FLD|REC);
 y->csub = CCOPY;
 y->nval = x->nval;
 if (isstr(x) ) {
  y->sval = tostring(x->sval);
  y->tval &= ~DONTFREE;
 } else
  y->tval |= DONTFREE;
 y->fval = x->fval;
 return y;
}
