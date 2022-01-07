
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
struct branchc {int dummy; } ;


 int REG_EMPTY ;
 int SETERROR (int ) ;

__attribute__((used)) static bool
p_branch_empty(struct parse *p, struct branchc *bc)
{

 (void)bc;
 SETERROR(REG_EMPTY);
 return (0);
}
