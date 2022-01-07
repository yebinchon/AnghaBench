
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uch ;
struct parse {size_t* pbegin; size_t* pend; TYPE_1__* g; int * strip; } ;
typedef size_t sopno ;
struct TYPE_2__ {size_t nsub; int cflags; int backrefs; int neol; int iflags; int nbol; } ;


 int AHEAD (size_t) ;
 int ASTERN (int ,size_t) ;
 int EAT (char) ;
 int EMIT (int ,int) ;
 char GETNEXT () ;
 void* HERE () ;
 int INFINITY ;
 int INSERT (int ,size_t) ;
 int MORE () ;
 scalar_t__ MORE2 () ;
 int MUSTEAT (char,int ) ;
 int NEXT () ;
 size_t NPAREN ;
 int OANY ;
 int OBACK_ ;
 int OBOL ;
 int OCH_ ;
 int OEOL ;
 int OLPAREN ;
 int OOR1 ;
 int OOR2 ;
 int OP (int ) ;
 int OPLUS_ ;
 int OQUEST_ ;
 int ORPAREN ;
 int O_BACK ;
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
 int REG_ESUBREG ;
 int REG_NEWLINE ;
 int REQUIRE (int,int ) ;
 int SEE (char) ;
 int SETERROR (int ) ;
 size_t THERE () ;
 size_t THERETHERE () ;
 int USEBOL ;
 int USEEOL ;
 int assert (int) ;
 int dupl (struct parse*,int ,size_t) ;
 scalar_t__ isdigit (int ) ;
 int nonnewline (struct parse*) ;
 int ordinary (struct parse*,char) ;
 int p_bracket (struct parse*) ;
 int p_count (struct parse*) ;
 int p_ere (struct parse*,char) ;
 int repeat (struct parse*,size_t,int,int) ;

__attribute__((used)) static void
p_ere_exp(struct parse *p)
{
 char c;
 sopno pos;
 int count;
 int count2;
 int backrefnum;
 sopno subno;
 int wascaret = 0;

 assert(MORE());
 c = GETNEXT();

 pos = HERE();
 switch (c) {
 case '(':
  REQUIRE(MORE(), REG_EPAREN);
  p->g->nsub++;
  subno = p->g->nsub;
  if (subno < NPAREN)
   p->pbegin[subno] = HERE();
  EMIT(OLPAREN, subno);
  if (!SEE(')'))
   p_ere(p, ')');
  if (subno < NPAREN) {
   p->pend[subno] = HERE();
   assert(p->pend[subno] != 0);
  }
  EMIT(ORPAREN, subno);
  MUSTEAT(')', REG_EPAREN);
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
  REQUIRE(MORE(), REG_EESCAPE);
  c = GETNEXT();
  if (c >= '1' && c <= '9') {





   backrefnum = c - '0';
   if (p->pend[backrefnum] == 0) {
    SETERROR(REG_ESUBREG);
    break;
   }




   assert(backrefnum <= p->g->nsub);
   EMIT(OBACK_, backrefnum);
   assert(p->pbegin[backrefnum] != 0);
   assert(OP(p->strip[p->pbegin[backrefnum]]) != OLPAREN);
   assert(OP(p->strip[p->pend[backrefnum]]) != ORPAREN);
   (void) dupl(p, p->pbegin[backrefnum]+1, p->pend[backrefnum]);
   EMIT(O_BACK, backrefnum);
   p->g->backrefs = 1;
  } else {


   ordinary(p, c);
  }
  break;
 case '{':
  REQUIRE(!MORE() || !isdigit((uch)PEEK()), REG_BADRPT);

 default:
  ordinary(p, c);
  break;
 }

 if (!MORE())
  return;
 c = PEEK();

 if (!( c == '*' || c == '+' || c == '?' ||
    (c == '{' && MORE2() && isdigit((uch)PEEK2())) ))
  return;
 NEXT();

 REQUIRE(!wascaret, REG_BADRPT);
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
   if (isdigit((uch)PEEK())) {
    count2 = p_count(p);
    REQUIRE(count <= count2, REG_BADBR);
   } else
    count2 = INFINITY;
  } else
   count2 = count;
  repeat(p, pos, count, count2);
  if (!EAT('}')) {
   while (MORE() && PEEK() != '}')
    NEXT();
   REQUIRE(MORE(), REG_EBRACE);
   SETERROR(REG_BADBR);
  }
  break;
 }

 if (!MORE())
  return;
 c = PEEK();
 if (!( c == '*' || c == '+' || c == '?' ||
    (c == '{' && MORE2() && isdigit((uch)PEEK2())) ) )
  return;
 SETERROR(REG_BADRPT);
}
