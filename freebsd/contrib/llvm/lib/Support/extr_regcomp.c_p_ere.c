
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef scalar_t__ sopno ;


 int AHEAD (scalar_t__) ;
 int ASTERN (int ,scalar_t__) ;
 int EAT (char) ;
 int EMIT (int ,int ) ;
 scalar_t__ HERE () ;
 int INSERT (int ,scalar_t__) ;
 scalar_t__ MORE () ;
 int OCH_ ;
 int OOR1 ;
 int OOR2 ;
 int O_CH ;
 char PEEK () ;
 int REG_EMPTY ;
 int REQUIRE (int,int ) ;
 scalar_t__ SEE (int) ;
 scalar_t__ THERE () ;
 int assert (int) ;
 int p_ere_exp (struct parse*) ;

__attribute__((used)) static void
p_ere(struct parse *p, int stop)
{
 char c;
 sopno prevback = 0;
 sopno prevfwd = 0;
 sopno conc;
 int first = 1;

 for (;;) {

  conc = HERE();
  while (MORE() && (c = PEEK()) != '|' && c != stop)
   p_ere_exp(p);
  REQUIRE(HERE() != conc, REG_EMPTY);

  if (!EAT('|'))
   break;

  if (first) {
   INSERT(OCH_, conc);
   prevfwd = conc;
   prevback = conc;
   first = 0;
  }
  ASTERN(OOR1, prevback);
  prevback = THERE();
  AHEAD(prevfwd);
  prevfwd = HERE();
  EMIT(OOR2, 0);
 }

 if (!first) {
  AHEAD(prevfwd);
  ASTERN(O_CH, prevback);
 }

 assert(!MORE() || SEE(stop));
}
