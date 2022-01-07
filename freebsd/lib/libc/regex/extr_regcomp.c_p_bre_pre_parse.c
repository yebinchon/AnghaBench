
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {TYPE_1__* g; } ;
struct branchc {int dummy; } ;
struct TYPE_2__ {int nbol; int iflags; } ;


 scalar_t__ EAT (char) ;
 int EMIT (int ,int ) ;
 int OBOL ;
 int USEBOL ;

__attribute__((used)) static void
p_bre_pre_parse(struct parse *p, struct branchc *bc)
{

 (void) bc;





 if (EAT('^')) {
  EMIT(OBOL, 0);
  p->g->iflags |= USEBOL;
  p->g->nbol++;
 }
}
