
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct match {char const* beginp; char const* endp; int eflags; char const* coldp; TYPE_1__* g; int tmp; int fresh; int st; } ;
typedef int states ;
typedef int sopno ;
struct TYPE_2__ {int cflags; int nbol; scalar_t__ neol; } ;


 int ASSIGN (int ,int ) ;
 int BOL ;
 int BOLEOL ;
 int BOW ;
 int CLEAR (int ) ;
 int EOL ;
 int EOW ;
 int EQ (int ,int ) ;
 scalar_t__ ISSET (int ,int ) ;
 scalar_t__ ISWORD (int) ;
 int NOTHING ;
 char const OUT ;
 int REG_NEWLINE ;
 int REG_NOTBOL ;
 int REG_NOTEOL ;
 int SET1 (int ,int ) ;
 int SP (char*,int ,char const) ;
 int assert (int) ;
 int step (TYPE_1__*,int ,int ,int ,int,int ) ;

__attribute__((used)) static const char *
fast(struct match *m, const char *start, const char *stop, sopno startst,
     sopno stopst)
{
 states st = m->st;
 states fresh = m->fresh;
 states tmp = m->tmp;
 const char *p = start;
 int c = (start == m->beginp) ? OUT : *(start-1);
 int lastc;
 int flagch;
 int i;
 const char *coldp;

 CLEAR(st);
 SET1(st, startst);
 st = step(m->g, startst, stopst, st, NOTHING, st);
 ASSIGN(fresh, st);
 SP("start", st, *p);
 coldp = ((void*)0);
 for (;;) {

  lastc = c;
  c = (p == m->endp) ? OUT : *p;
  if (EQ(st, fresh))
   coldp = p;


  flagch = '\0';
  i = 0;
  if ( (lastc == '\n' && m->g->cflags&REG_NEWLINE) ||
    (lastc == OUT && !(m->eflags&REG_NOTBOL)) ) {
   flagch = BOL;
   i = m->g->nbol;
  }
  if ( (c == '\n' && m->g->cflags&REG_NEWLINE) ||
    (c == OUT && !(m->eflags&REG_NOTEOL)) ) {
   flagch = (flagch == BOL) ? BOLEOL : EOL;
   i += m->g->neol;
  }
  if (i != 0) {
   for (; i > 0; i--)
    st = step(m->g, startst, stopst, st, flagch, st);
   SP("boleol", st, c);
  }


  if ( (flagch == BOL || (lastc != OUT && !ISWORD(lastc))) &&
     (c != OUT && ISWORD(c)) ) {
   flagch = BOW;
  }
  if ( (lastc != OUT && ISWORD(lastc)) &&
    (flagch == EOL || (c != OUT && !ISWORD(c))) ) {
   flagch = EOW;
  }
  if (flagch == BOW || flagch == EOW) {
   st = step(m->g, startst, stopst, st, flagch, st);
   SP("boweow", st, c);
  }


  if (ISSET(st, stopst) || p == stop)
   break;


  ASSIGN(tmp, st);
  ASSIGN(st, fresh);
  assert(c != OUT);
  st = step(m->g, startst, stopst, tmp, c, st);
  SP("aft", st, c);
  assert(EQ(step(m->g, startst, stopst, st, NOTHING, st), st));
  p++;
 }

 assert(coldp != ((void*)0));
 m->coldp = coldp;
 if (ISSET(st, stopst))
  return(p+1);
 else
  return(((void*)0));
}
