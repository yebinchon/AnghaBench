
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
struct branchc {int dummy; } ;


 scalar_t__ EAT (char) ;

__attribute__((used)) static int
p_branch_eat_delim(struct parse *p, struct branchc *bc)
{
 int nskip;

 (void)bc;
 nskip = 0;
 while (EAT('|'))
  ++nskip;
 return (nskip);
}
