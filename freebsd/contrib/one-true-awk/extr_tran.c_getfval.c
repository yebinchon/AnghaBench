
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tval; int fval; int nval; int sval; } ;
typedef TYPE_1__ Cell ;
typedef int Awkfloat ;


 int CON ;
 int NN (int ) ;
 int NUM ;
 int STR ;
 int atof (int ) ;
 scalar_t__ donefld ;
 scalar_t__ donerec ;
 int dprintf (char*) ;
 int fldbld () ;
 int funnyvar (TYPE_1__*,char*) ;
 scalar_t__ is_number (int ) ;
 scalar_t__ isfld (TYPE_1__*) ;
 int isnum (TYPE_1__*) ;
 scalar_t__ isrec (TYPE_1__*) ;
 int recbld () ;

Awkfloat getfval(Cell *vp)
{
 if ((vp->tval & (NUM | STR)) == 0)
  funnyvar(vp, "read value of");
 if (isfld(vp) && donefld == 0)
  fldbld();
 else if (isrec(vp) && donerec == 0)
  recbld();
 if (!isnum(vp)) {
  vp->fval = atof(vp->sval);
  if (is_number(vp->sval) && !(vp->tval&CON))
   vp->tval |= NUM;
 }
    dprintf( ("getfval %p: %s = %g, t=%o\n",
  (void*)vp, NN(vp->nval), vp->fval, vp->tval) );
 return(vp->fval);
}
