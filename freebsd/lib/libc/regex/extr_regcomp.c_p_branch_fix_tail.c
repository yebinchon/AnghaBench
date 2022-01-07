
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
struct branchc {scalar_t__ nbranch; int back; int fwd; } ;


 int AHEAD (int ) ;
 int ASTERN (int ,int ) ;
 int O_CH ;

__attribute__((used)) static void
p_branch_fix_tail(struct parse *p, struct branchc *bc)
{


 if (bc->nbranch > 0) {
  AHEAD(bc->fwd);
  ASTERN(O_CH, bc->back);
 }
}
