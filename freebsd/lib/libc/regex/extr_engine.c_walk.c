
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char wint_t ;
typedef char uch ;
struct match {char const* offp; char const* beginp; int eflags; char const* endp; char const* coldp; int mbs; TYPE_1__* g; int tmp; int empty; int fresh; int st; } ;
typedef int states ;
typedef int sopno ;
struct TYPE_2__ {int cflags; int nbol; scalar_t__ neol; } ;


 int ASSIGN (int ,int ) ;
 int AT (char*,char const*,char const*,int ,int ) ;
 int BADCHAR ;
 char BOL ;
 char BOLEOL ;
 char BOW ;
 int CLEAR (int ) ;
 char EOL ;
 char EOW ;
 int EQ (int ,int ) ;
 scalar_t__ ISSET (int ,int ) ;
 scalar_t__ ISWORD (char) ;
 char NOTHING ;
 char OUT ;
 int REG_NEWLINE ;
 int REG_NOTBOL ;
 int REG_NOTEOL ;
 int SET1 (int ,int ) ;
 int SP (char*,int ,char const) ;
 int XMBRTOWC (char*,char const*,int,int *,int ) ;
 int assert (int) ;
 int step (TYPE_1__*,int ,int ,int ,char,int ) ;

__attribute__((used)) static const char *
walk(struct match *m, const char *start, const char *stop, sopno startst,
 sopno stopst, bool fast)
{
 states st = m->st;
 states fresh = m->fresh;
 states empty = m->empty;
 states tmp = m->tmp;
 const char *p = start;
 wint_t c;
 wint_t lastc;
 wint_t flagch;
 int i;
 const char *matchp;
 size_t clen;

 AT("slow", start, stop, startst, stopst);
 CLEAR(st);
 SET1(st, startst);
 SP("sstart", st, *p);
 st = step(m->g, startst, stopst, st, NOTHING, st);
 if (fast)
  ASSIGN(fresh, st);
 matchp = ((void*)0);
 if (start == m->offp || (start == m->beginp && !(m->eflags&REG_NOTBOL)))
  c = OUT;
 else {





  c = (uch)*(start - 1);
 }
 for (;;) {

  lastc = c;
  if (p == m->endp) {
   c = OUT;
   clen = 0;
  } else
   clen = XMBRTOWC(&c, p, m->endp - p, &m->mbs, BADCHAR);

  if (fast && EQ(st, fresh))
   matchp = p;


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
   SP("sboleol", st, c);
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
   SP("sboweow", st, c);
  }


  if (ISSET(st, stopst)) {
   if (fast)
    break;
   else
    matchp = p;
  }
  if (EQ(st, empty) || p == stop || clen > (size_t)(stop - p))
   break;


  ASSIGN(tmp, st);
  if (fast)
   ASSIGN(st, fresh);
  else
   ASSIGN(st, empty);
  assert(c != OUT);
  st = step(m->g, startst, stopst, tmp, c, st);
  SP("saft", st, c);
  assert(EQ(step(m->g, startst, stopst, st, NOTHING, st), st));
  p += clen;
 }

 if (fast) {
  assert(matchp != ((void*)0));
  m->coldp = matchp;
  if (ISSET(st, stopst))
   return (p + XMBRTOWC(((void*)0), p, stop - p, &m->mbs, 0));
  else
   return (((void*)0));
 } else
  return (matchp);
}
