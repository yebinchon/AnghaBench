
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {size_t* pbegin; size_t* pend; TYPE_1__* g; int * strip; } ;
typedef size_t sopno ;
typedef int UCHAR_T ;
struct TYPE_2__ {size_t nsub; int backrefs; int cflags; } ;


 int ASTERN (int ,size_t) ;
 scalar_t__ EAT (char) ;
 int EATTWO (char,char) ;
 int EMIT (int ,int) ;
 int GETNEXT () ;
 void* HERE () ;
 int INFINITY ;
 int INSERT (int ,size_t) ;
 scalar_t__ ISDIGIT (int ) ;
 int MORE () ;
 int NEXT () ;
 size_t NPAREN ;
 int OANY ;
 int OBACK_ ;
 int OLPAREN ;
 int OPLUS_ ;
 int OQUEST_ ;
 int ORPAREN ;
 int O_BACK ;
 int O_PLUS ;
 int O_QUEST ;
 scalar_t__ PEEK () ;
 int REG_BADBR ;
 int REG_BADRPT ;
 int REG_EBRACE ;
 int REG_EESCAPE ;
 int REG_EPAREN ;
 int REG_ESUBREG ;
 int REG_NEWLINE ;
 int REQUIRE (int,int ) ;
 int SEETWO (char,char) ;
 int SETERROR (int ) ;
 int assert (int) ;
 int dupl (struct parse*,int ,size_t) ;
 int nonnewline (struct parse*) ;
 int ordinary (struct parse*,int) ;
 int p_bracket (struct parse*) ;
 int p_bre (struct parse*,char,char,size_t) ;
 int p_count (struct parse*) ;
 int repeat (struct parse*,size_t,int,int,size_t) ;

__attribute__((used)) static int
p_simp_re(struct parse *p,
    int starordinary,
    size_t reclimit)
{
 int c;
 int count;
 int count2;
 sopno pos;
 int i;
 sopno subno;
 int backsl;

 pos = HERE();

 assert(MORE());
 c = GETNEXT();
 backsl = c == '\\';
 if (backsl) {
  (void)REQUIRE(MORE(), REG_EESCAPE);
  c = (unsigned char)GETNEXT();
  switch (c) {
  case '{':
   SETERROR(REG_BADRPT);
   break;
  case '(':
   p->g->nsub++;
   subno = p->g->nsub;
   if (subno < NPAREN)
    p->pbegin[subno] = HERE();
   EMIT(OLPAREN, subno);

   if (MORE() && !SEETWO('\\', ')'))
    p_bre(p, '\\', ')', reclimit);
   if (subno < NPAREN) {
    p->pend[subno] = HERE();
    assert(p->pend[subno] != 0);
   }
   EMIT(ORPAREN, subno);
   (void)REQUIRE(EATTWO('\\', ')'), REG_EPAREN);
   break;
  case ')':
  case '}':
   SETERROR(REG_EPAREN);
   break;
  case '1':
  case '2':
  case '3':
  case '4':
  case '5':
  case '6':
  case '7':
  case '8':
  case '9':
   i = c - '0';
   assert(i < NPAREN);
   if (p->pend[i] != 0) {
    assert(i <= p->g->nsub);
    EMIT(OBACK_, i);
    assert(p->pbegin[i] != 0);
    assert(p->strip[p->pbegin[i]] == OLPAREN);
    assert(p->strip[p->pend[i]] == ORPAREN);
    (void) dupl(p, p->pbegin[i]+1, p->pend[i]);
    EMIT(O_BACK, i);
   } else
    SETERROR(REG_ESUBREG);
   p->g->backrefs = 1;
   break;
  default:
   ordinary(p, c);
   break;
  }
 } else {
  switch (c) {
  case '.':
   if (p->g->cflags&REG_NEWLINE)
    nonnewline(p);
   else
    EMIT(OANY, 0);
   break;
  case '[':
   p_bracket(p);
   break;
  case '*':
   (void)REQUIRE(starordinary, REG_BADRPT);

  default:
   ordinary(p, c);
   break;
  }
 }

 if (EAT('*')) {

  INSERT(OPLUS_, pos);
  ASTERN(O_PLUS, pos);
  INSERT(OQUEST_, pos);
  ASTERN(O_QUEST, pos);
 } else if (EATTWO('\\', '{')) {
  count = p_count(p);
  if (EAT(',')) {
   if (MORE() && ISDIGIT((UCHAR_T)PEEK())) {
    count2 = p_count(p);
    (void)REQUIRE(count <= count2, REG_BADBR);
   } else
    count2 = INFINITY;
  } else
   count2 = count;
  repeat(p, pos, count, count2, reclimit);
  if (!EATTWO('\\', '}')) {
   while (MORE() && !SEETWO('\\', '}'))
    NEXT();
   (void)REQUIRE(MORE(), REG_EBRACE);
   SETERROR(REG_BADBR);
  }
 } else if (!backsl && c == (unsigned char)'$')
  return(1);

 return(0);
}
