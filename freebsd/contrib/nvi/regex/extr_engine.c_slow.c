
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct match {char const* beginp; char const* endp; int eflags; TYPE_1__* g; int tmp; int empty; int st; } ;
typedef int states ;
typedef int sopno ;
struct TYPE_2__ {int cflags; int nbol; scalar_t__ neol; } ;
typedef char RCHAR_T ;


 int ASSIGN (int ,int ) ;
 int AT (char*,char const*,char const*,int ,int ) ;
 int BOL ;
 int BOLEOL ;
 int BOW ;
 int CLEAR (int ) ;
 int EOL ;
 int EOW ;
 int EQ (int ,int ) ;
 scalar_t__ ISSET (int ,int ) ;
 scalar_t__ ISWORD (char) ;
 int NOTHING ;
 char const OUT ;
 int REG_NEWLINE ;
 int REG_NOTBOL ;
 int REG_NOTEOL ;
 int SET1 (int ,int ) ;
 int SP (char*,int ,char const) ;
 int assert (int) ;
 int step (TYPE_1__*,int ,int ,int ,int,char const,int ) ;

__attribute__((used)) static const RCHAR_T *
slow(struct match *m, const RCHAR_T *start, const RCHAR_T *stop, sopno startst,
    sopno stopst)
{
 states st = m->st;
 states empty = m->empty;
 states tmp = m->tmp;
 const RCHAR_T *p = start;
 RCHAR_T c = (start == m->beginp) ? OUT : *(start-1);
 RCHAR_T lastc;
 int flag;
 int i;
 const RCHAR_T *matchp;

 AT("slow", start, stop, startst, stopst);
 CLEAR(st);
 SET1(st, startst);
 SP("sstart", st, *p);
 st = step(m->g, startst, stopst, st, NOTHING, OUT, st);
 matchp = ((void*)0);
 for (;;) {

  lastc = c;
  c = (p == m->endp) ? OUT : *p;


  flag = 0;
  i = 0;
  if ( (lastc == '\n' && m->g->cflags&REG_NEWLINE) ||
    (lastc == OUT && !(m->eflags&REG_NOTBOL)) ) {
   flag = BOL;
   i = m->g->nbol;
  }
  if ( (c == '\n' && m->g->cflags&REG_NEWLINE) ||
    (c == OUT && !(m->eflags&REG_NOTEOL)) ) {
   flag = (flag == BOL) ? BOLEOL : EOL;
   i += m->g->neol;
  }
  if (i != 0) {
   for (; i > 0; i--)
    st = step(m->g, startst, stopst, st, flag, OUT, st);
   SP("sboleol", st, c);
  }


  if ( (flag == BOL || (lastc != OUT && !ISWORD(lastc))) &&
     (c != OUT && ISWORD(c)) ) {
   flag = BOW;
  }
  if ( (lastc != OUT && ISWORD(lastc)) &&
    (flag == EOL || (c != OUT && !ISWORD(c))) ) {
   flag = EOW;
  }
  if (flag == BOW || flag == EOW) {
   st = step(m->g, startst, stopst, st, flag, OUT, st);
   SP("sboweow", st, c);
  }


  if (ISSET(st, stopst))
   matchp = p;
  if (EQ(st, empty) || p == stop)
   break;


  ASSIGN(tmp, st);
  ASSIGN(st, empty);
  assert(c != OUT);
  st = step(m->g, startst, stopst, tmp, 0, c, st);
  SP("saft", st, c);
  assert(EQ(step(m->g, startst, stopst, st, NOTHING, OUT, st), st));
  p++;
 }

 return(matchp);
}
