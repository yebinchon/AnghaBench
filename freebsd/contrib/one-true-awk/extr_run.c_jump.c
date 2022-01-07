
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_17__ {int tval; scalar_t__ fval; } ;
struct TYPE_16__ {int tval; } ;
struct TYPE_15__ {TYPE_3__* retval; } ;
typedef int Node ;
typedef TYPE_1__ Cell ;





 int FATAL (char*,int) ;


 int NUM ;

 int STR ;
 int env ;
 int errorflag ;
 TYPE_1__* execute (int *) ;
 TYPE_13__* fp ;
 scalar_t__ getfval (TYPE_1__*) ;
 int getsval (TYPE_1__*) ;
 TYPE_1__* jbreak ;
 TYPE_1__* jcont ;
 TYPE_1__* jnext ;
 TYPE_1__* jnextfile ;
 TYPE_1__* jret ;
 int longjmp (int ,int) ;
 int nextfile () ;
 int setfval (TYPE_3__*,scalar_t__) ;
 int setsval (TYPE_3__*,int ) ;
 int tempfree (TYPE_1__*) ;

Cell *jump(Node **a, int n)
{
 Cell *y;

 switch (n) {
 case 131:
  if (a[0] != ((void*)0)) {
   y = execute(a[0]);
   errorflag = (int) getfval(y);
   tempfree(y);
  }
  longjmp(env, 1);
 case 128:
  if (a[0] != ((void*)0)) {
   y = execute(a[0]);
   if ((y->tval & (STR|NUM)) == (STR|NUM)) {
    setsval(fp->retval, getsval(y));
    fp->retval->fval = getfval(y);
    fp->retval->tval |= NUM;
   }
   else if (y->tval & STR)
    setsval(fp->retval, getsval(y));
   else if (y->tval & NUM)
    setfval(fp->retval, getfval(y));
   else
    FATAL("bad type variable %d", y->tval);
   tempfree(y);
  }
  return(jret);
 case 130:
  return(jnext);
 case 129:
  nextfile();
  return(jnextfile);
 case 133:
  return(jbreak);
 case 132:
  return(jcont);
 default:
  FATAL("illegal jump type %d", n);
 }
 return 0;
}
