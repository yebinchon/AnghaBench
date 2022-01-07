
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prgregset_t ;


 int current_regcache ;
 int sparc_sol2_gregset ;
 int sparc_supply_gregset (int *,int ,int,int *) ;

void
supply_gregset (prgregset_t *gregs)
{
  sparc_supply_gregset (&sparc_sol2_gregset, current_regcache, -1, gregs);
}
