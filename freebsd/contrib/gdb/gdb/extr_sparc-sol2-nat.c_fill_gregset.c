
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prgregset_t ;


 int current_regcache ;
 int sparc_collect_gregset (int *,int ,int,int *) ;
 int sparc_sol2_gregset ;

void
fill_gregset (prgregset_t *gregs, int regnum)
{
  sparc_collect_gregset (&sparc_sol2_gregset, current_regcache, regnum, gregs);
}
