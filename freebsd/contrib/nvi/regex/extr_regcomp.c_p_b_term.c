
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int cset ;


 int CHadd (int *,int) ;
 int EAT (char) ;
 int EATTWO (char,char) ;
 int MORE () ;
 int MORE2 () ;
 int NEXT () ;
 int NEXT2 () ;
 int PEEK () ;
 char PEEK2 () ;
 int REG_EBRACK ;
 int REG_ECOLLATE ;
 int REG_ECTYPE ;
 int REG_ERANGE ;
 int REQUIRE (int,int ) ;
 int SEE (char) ;
 int SETERROR (int ) ;
 int p_b_cclass (struct parse*,int *) ;
 int p_b_eclass (struct parse*,int *) ;
 char p_b_symbol (struct parse*) ;

__attribute__((used)) static void
p_b_term(struct parse *p, cset *cs)
{
 char c;
 char start, finish;
 int i;


 switch ((MORE()) ? PEEK() : '\0') {
 case '[':
  c = (MORE2()) ? PEEK2() : '\0';
  break;
 case '-':
  SETERROR(REG_ERANGE);
  return;
  break;
 default:
  c = '\0';
  break;
 }

 switch (c) {
 case ':':
  NEXT2();
  (void)REQUIRE(MORE(), REG_EBRACK);
  c = PEEK();
  (void)REQUIRE(c != '-' && c != ']', REG_ECTYPE);
  p_b_cclass(p, cs);
  (void)REQUIRE(MORE(), REG_EBRACK);
  (void)REQUIRE(EATTWO(':', ']'), REG_ECTYPE);
  break;
 case '=':
  NEXT2();
  (void)REQUIRE(MORE(), REG_EBRACK);
  c = PEEK();
  (void)REQUIRE(c != '-' && c != ']', REG_ECOLLATE);
  p_b_eclass(p, cs);
  (void)REQUIRE(MORE(), REG_EBRACK);
  (void)REQUIRE(EATTWO('=', ']'), REG_ECOLLATE);
  break;
 default:

  start = p_b_symbol(p);
  if (SEE('-') && MORE2() && PEEK2() != ']') {

   NEXT();
   if (EAT('-'))
    finish = '-';
   else
    finish = p_b_symbol(p);
  } else
   finish = start;

  (void)REQUIRE(start <= finish, REG_ERANGE);
  for (i = start; i <= finish; i++)
   CHadd(cs, i);
  break;
 }
}
