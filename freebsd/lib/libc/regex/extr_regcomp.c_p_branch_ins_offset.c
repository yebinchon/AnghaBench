
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
struct branchc {scalar_t__ nbranch; int fwd; int back; int start; } ;


 int AHEAD (int ) ;
 int ASTERN (int ,int ) ;
 int EMIT (int ,int ) ;
 int HERE () ;
 int INSERT (int ,int ) ;
 int OCH_ ;
 int OOR1 ;
 int OOR2 ;
 int THERE () ;

__attribute__((used)) static void
p_branch_ins_offset(struct parse *p, struct branchc *bc)
{

 if (bc->nbranch == 0) {
  INSERT(OCH_, bc->start);
  bc->fwd = bc->start;
  bc->back = bc->start;
 }

 ASTERN(OOR1, bc->back);
 bc->back = THERE();
 AHEAD(bc->fwd);
 bc->fwd = HERE();
 EMIT(OOR2, 0);
 ++bc->nbranch;
}
