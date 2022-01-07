
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_regcache ;
 int sparc64_supply_fpregset (int ,int,void const*) ;

void
supply_fpregset (const void *fpregs)
{
  sparc64_supply_fpregset (current_regcache, -1, fpregs);
}
