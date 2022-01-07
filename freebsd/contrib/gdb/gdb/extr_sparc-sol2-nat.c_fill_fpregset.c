
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prfpregset_t ;


 int current_regcache ;
 int sparc_collect_fpregset (int ,int,int *) ;

void
fill_fpregset (prfpregset_t *fpregs, int regnum)
{
  sparc_collect_fpregset (current_regcache, regnum, fpregs);
}
