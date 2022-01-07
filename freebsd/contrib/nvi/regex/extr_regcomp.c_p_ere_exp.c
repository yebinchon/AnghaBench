
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {TYPE_1__* g; void** pend; void** pbegin; } ;
typedef size_t sopno ;
typedef int UCHAR_T ;
struct TYPE_2__ {size_t nsub; int cflags; int neol; int iflags; int nbol; } ;


 int AHEAD (size_t) ;
 int ASTERN (int ,size_t) ;
 int EAT (char) ;
 int EMIT (int ,size_t) ;
 char GETNEXT () ;
 void* HERE () ;
 int INFINITY ;
 int INSERT (int ,size_t) ;
 scalar_t__ ISDIGIT (int ) ;
 int MORE () ;
 scalar_t__ MORE2 () ;
 int MUSTEAT (char,int ) ;
 int NEXT () ;
 size_t NPAREN ;
 int OANY ;
 int OBOL ;
 int OCH_ ;
 int OEOL ;
 int OLPAREN ;
 int OOR1 ;
 int OOR2 ;
 int OPLUS_ ;
 int OQUEST_ ;
 int ORPAREN ;
 int O_CH ;
 int O_PLUS ;
 int O_QUEST ;
 char PEEK () ;
 scalar_t__ PEEK2 () ;
 int REG_BADBR ;
 int REG_BADRPT ;
 int REG_EBRACE ;
 int REG_EESCAPE ;
 int REG_EMPTY ;
 int REG_EPAREN ;
 int REG_NEWLINE ;
 int REQUIRE (int,int ) ;
 int SEE (char) ;
 int SETERROR (int ) ;
 size_t THERE () ;
 size_t THERETHERE () ;
 int USEBOL ;
 int USEEOL ;
 int assert (int) ;
 int nonnewline (struct parse*) ;
 int ordinary (struct parse*,char) ;
 int p_bracket (struct parse*) ;
 int p_count (struct parse*) ;
 int p_ere (struct parse*,char,size_t) ;
 int repeat (struct parse*,size_t,int,int,int ) ;

__attribute__((used)) static void
p_ere_exp(struct parse *p, size_t reclimit)
{
 char c;
 sopno pos;
 int count;
 int count2;
 sopno subno;
 int wascaret = 0;

 assert(MORE());
 c = GETNEXT();

 pos = HERE();
 switch (c) {
 case '(':
  (void)REQUIRE(MORE(), REG_EPAREN);
  p->g->nsub++;
  subno = p->g->nsub;
  if (subno < NPAREN)
   p->pbegin[subno] = HERE();
  EMIT(OLPAREN, subno);
  if (!SEE(')'))
   p_ere(p, ')', reclimit);
  if (subno < NPAREN) {
   p->pend[subno] = HERE();
   assert(p->pend[subno] != 0);
  }
  EMIT(ORPAREN, subno);
  (void)MUSTEAT(')', REG_EPAREN);
  break;

 case ')':







  SETERROR(REG_EPAREN);
  break;

 case '^':
  EMIT(OBOL, 0);
  p->g->iflags |= USEBOL;
  p->g->nbol++;
  wascaret = 1;
  break;
 case '$':
  EMIT(OEOL, 0);
  p->g->iflags |= USEEOL;
  p->g->neol++;
  break;
 case '|':
  SETERROR(REG_EMPTY);
  break;
 case '*':
 case '+':
 case '?':
  SETERROR(REG_BADRPT);
  break;
 case '.':
  if (p->g->cflags&REG_NEWLINE)
   nonnewline(p);
  else
   EMIT(OANY, 0);
  break;
 case '[':
  p_bracket(p);
  break;
 case '\\':
  (void)REQUIRE(MORE(), REG_EESCAPE);
  c = GETNEXT();
  ordinary(p, c);
  break;
 case '{':
  (void)REQUIRE(!MORE() || !ISDIGIT((UCHAR_T)PEEK()), REG_BADRPT);

 default:
  ordinary(p, c);
  break;
 }

 if (!MORE())
  return;
 c = PEEK();

 if (!( c == '*' || c == '+' || c == '?' ||
    (c == '{' && MORE2() && ISDIGIT((UCHAR_T)PEEK2())) ))
  return;
 NEXT();

 (void)REQUIRE(!wascaret, REG_BADRPT);
 switch (c) {
 case '*':

  INSERT(OPLUS_, pos);
  ASTERN(O_PLUS, pos);
  INSERT(OQUEST_, pos);
  ASTERN(O_QUEST, pos);
  break;
 case '+':
  INSERT(OPLUS_, pos);
  ASTERN(O_PLUS, pos);
  break;
 case '?':

  INSERT(OCH_, pos);
  ASTERN(OOR1, pos);
  AHEAD(pos);
  EMIT(OOR2, 0);
  AHEAD(THERE());
  ASTERN(O_CH, THERETHERE());
  break;
 case '{':
  count = p_count(p);
  if (EAT(',')) {
   if (ISDIGIT((UCHAR_T)PEEK())) {
    count2 = p_count(p);
    (void)REQUIRE(count <= count2, REG_BADBR);
   } else
    count2 = INFINITY;
  } else
   count2 = count;
  repeat(p, pos, count, count2, 0);
  if (!EAT('}')) {
   while (MORE() && PEEK() != '}')
    NEXT();
   (void)REQUIRE(MORE(), REG_EBRACE);
   SETERROR(REG_BADBR);
  }
  break;
 }

 if (!MORE())
  return;
 c = PEEK();
 if (!( c == '*' || c == '+' || c == '?' ||
    (c == '{' && MORE2() && ISDIGIT((UCHAR_T)PEEK2())) ) )
  return;
 SETERROR(REG_BADRPT);
}
