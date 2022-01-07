
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int fa ;
struct TYPE_9__ {int fval; int tval; } ;
typedef int Node ;
typedef TYPE_1__ Cell ;
typedef int Awkfloat ;


 TYPE_1__* False ;
 int MATCH ;
 int MATCHFCN ;
 int NOTMATCH ;
 int NUM ;
 TYPE_1__* True ;
 TYPE_1__* execute (int *) ;
 char* getsval (TYPE_1__*) ;
 TYPE_1__* gettemp () ;
 int * makedfa (char*,int) ;
 int match (int *,char const*) ;
 char* patbeg ;
 scalar_t__ patlen ;
 int pmatch (int *,char const*) ;
 int rlengthloc ;
 int rstartloc ;
 int setfval (int ,int ) ;
 int stub1 (int *,char const*) ;
 int stub2 (int *,char const*) ;
 int tempfree (TYPE_1__*) ;

Cell *matchop(Node **a, int n)
{
 Cell *x, *y;
 char *s, *t;
 int i;
 fa *pfa;
 int (*mf)(fa *, const char *) = match, mode = 0;

 if (n == MATCHFCN) {
  mf = pmatch;
  mode = 1;
 }
 x = execute(a[1]);
 s = getsval(x);
 if (a[0] == ((void*)0))
  i = (*mf)((fa *) a[2], s);
 else {
  y = execute(a[2]);
  t = getsval(y);
  pfa = makedfa(t, mode);
  i = (*mf)(pfa, s);
  tempfree(y);
 }
 tempfree(x);
 if (n == MATCHFCN) {
  int start = patbeg - s + 1;
  if (patlen < 0)
   start = 0;
  setfval(rstartloc, (Awkfloat) start);
  setfval(rlengthloc, (Awkfloat) patlen);
  x = gettemp();
  x->tval = NUM;
  x->fval = start;
  return x;
 } else if ((n == MATCH && i == 1) || (n == NOTMATCH && i == 0))
  return(True);
 else
  return(False);
}
