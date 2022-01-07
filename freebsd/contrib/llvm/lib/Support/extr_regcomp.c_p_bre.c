
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {TYPE_1__* g; } ;
typedef scalar_t__ sopno ;
struct TYPE_2__ {int neol; int iflags; int nbol; } ;


 int DROP (int) ;
 scalar_t__ EAT (char) ;
 int EMIT (int ,int ) ;
 scalar_t__ HERE () ;
 scalar_t__ MORE () ;
 int OBOL ;
 int OEOL ;
 int REG_EMPTY ;
 int REQUIRE (int,int ) ;
 int SEETWO (int,int) ;
 int USEBOL ;
 int USEEOL ;
 int p_simp_re (struct parse*,int) ;

__attribute__((used)) static void
p_bre(struct parse *p,
    int end1,
    int end2)
{
 sopno start = HERE();
 int first = 1;
 int wasdollar = 0;

 if (EAT('^')) {
  EMIT(OBOL, 0);
  p->g->iflags |= USEBOL;
  p->g->nbol++;
 }
 while (MORE() && !SEETWO(end1, end2)) {
  wasdollar = p_simp_re(p, first);
  first = 0;
 }
 if (wasdollar) {
  DROP(1);
  EMIT(OEOL, 0);
  p->g->iflags |= USEEOL;
  p->g->neol++;
 }

 REQUIRE(HERE() != start, REG_EMPTY);
}
