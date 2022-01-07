
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {TYPE_1__* g; } ;
struct branchc {scalar_t__ terminate; } ;
struct TYPE_2__ {int neol; int iflags; } ;


 int DROP (int) ;
 int EMIT (int ,int ) ;
 int OEOL ;
 int USEEOL ;

__attribute__((used)) static void
p_bre_post_parse(struct parse *p, struct branchc *bc)
{


 if (bc->terminate) {
  DROP(1);
  EMIT(OEOL, 0);
  p->g->iflags |= USEEOL;
  p->g->neol++;
 }
}
