
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
struct branchc {scalar_t__ outer; } ;


 int MORE () ;
 int p_branch_eat_delim (struct parse*,struct branchc*) ;
 int p_branch_empty (struct parse*,struct branchc*) ;
 int p_branch_ins_offset (struct parse*,struct branchc*) ;

__attribute__((used)) static bool
p_branch_do(struct parse *p, struct branchc *bc)
{
 int ate = 0;

 ate = p_branch_eat_delim(p, bc);
 if (ate == 0)
  return (0);
 else if ((ate > 1 || (bc->outer && !MORE())) && !p_branch_empty(p, bc))





  return (0);
 p_branch_ins_offset(p, bc);

 return (1);
}
