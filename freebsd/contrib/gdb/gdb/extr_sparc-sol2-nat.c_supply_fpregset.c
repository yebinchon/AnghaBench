
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prfpregset_t ;


 int current_regcache ;
 int sparc_supply_fpregset (int ,int,int *) ;

void
supply_fpregset (prfpregset_t *fpregs)
{
  sparc_supply_fpregset (current_regcache, -1, fpregs);
}
