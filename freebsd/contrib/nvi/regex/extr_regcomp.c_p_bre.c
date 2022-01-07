
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {scalar_t__ error; TYPE_1__* g; } ;
typedef scalar_t__ sopno ;
struct TYPE_2__ {int neol; int iflags; int nbol; } ;


 int DROP (int) ;
 scalar_t__ EAT (char) ;
 int EMIT (int ,int ) ;
 scalar_t__ HERE () ;
 scalar_t__ MORE () ;
 int OBOL ;
 int OEOL ;
 int RECLIMIT ;
 int REG_EMPTY ;
 scalar_t__ REG_ESPACE ;
 int REQUIRE (int,int ) ;
 int SEETWO (int,int) ;
 int USEBOL ;
 int USEEOL ;
 int p_simp_re (struct parse*,int,size_t) ;

__attribute__((used)) static void
p_bre(struct parse *p,
    int end1,
    int end2,
    size_t reclimit)
{
 sopno start;
 int first = 1;
 int wasdollar = 0;

 if (reclimit++ > RECLIMIT || p->error == REG_ESPACE) {
  p->error = REG_ESPACE;
  return;
 }

 start = HERE();

 if (EAT('^')) {
  EMIT(OBOL, 0);
  p->g->iflags |= USEBOL;
  p->g->nbol++;
 }
 while (MORE() && !SEETWO(end1, end2)) {
  wasdollar = p_simp_re(p, first, reclimit);
  first = 0;
 }
 if (wasdollar) {
  DROP(1);
  EMIT(OEOL, 0);
  p->g->iflags |= USEEOL;
  p->g->neol++;
 }

 (void)REQUIRE(HERE() != start, REG_EMPTY);
}
