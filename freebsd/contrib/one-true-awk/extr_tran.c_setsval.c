
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int tval; char* sval; int fval; int nval; int * fmt; } ;
typedef TYPE_1__ Cell ;
typedef int Awkfloat ;


 int CONVC ;
 int CONVO ;
 int* NF ;
 int NN (int ) ;
 int NUM ;
 int STR ;
 int atoi (int ) ;
 scalar_t__ donefld ;
 int donerec ;
 int dprintf (char*) ;
 scalar_t__ freeable (TYPE_1__*) ;
 int funnyvar (TYPE_1__*,char*) ;
 int getfval (TYPE_1__*) ;
 scalar_t__ isfld (TYPE_1__*) ;
 scalar_t__ isrec (TYPE_1__*) ;
 int newfld (int) ;
 TYPE_1__* ofsloc ;
 int recbld () ;
 int setfree (TYPE_1__*) ;
 int setlastfld (int ) ;
 char* tostring (char const*) ;
 int xfree (char*) ;

char *setsval(Cell *vp, const char *s)
{
 char *t;
 int fldno;
 Awkfloat f;

    dprintf( ("starting setsval %p: %s = \"%s\", t=%o, r,f=%d,%d\n",
  (void*)vp, NN(vp->nval), s, vp->tval, donerec, donefld) );
 if ((vp->tval & (NUM | STR)) == 0)
  funnyvar(vp, "assign to");
 if (isfld(vp)) {
  donerec = 0;
  fldno = atoi(vp->nval);
  if (fldno > *NF)
   newfld(fldno);
     dprintf( ("setting field %d to %s (%p)\n", fldno, s, (void *) s) );
 } else if (isrec(vp)) {
  donefld = 0;
  donerec = 1;
 } else if (vp == ofsloc) {
  if (donerec == 0)
   recbld();
 }
 t = s ? tostring(s) : tostring("");
 if (freeable(vp))
  xfree(vp->sval);
 vp->tval &= ~(NUM|CONVC|CONVO);
 vp->tval |= STR;
 vp->fmt = ((void*)0);
 setfree(vp);
    dprintf( ("setsval %p: %s = \"%s (%p) \", t=%o r,f=%d,%d\n",
  (void*)vp, NN(vp->nval), t, (void *) t, vp->tval, donerec, donefld) );
 vp->sval = t;
 if (&vp->fval == NF) {
  donerec = 0;
  f = getfval(vp);
  setlastfld(f);
  dprintf( ("setting NF to %g\n", f) );
 }

 return(vp->sval);
}
