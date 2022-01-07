
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;


 int current_gdbarch ;
 int gdbarch_ptr_bit (int ) ;
 int sparc32_supply_fpregset (struct regcache*,int,void const*) ;
 int sparc64_supply_fpregset (struct regcache*,int,void const*) ;

__attribute__((used)) static void
sparc64nbsd_supply_fpregset (struct regcache *regcache,
        int regnum, const void *fpregs)
{
  int sparc32 = (gdbarch_ptr_bit (current_gdbarch) == 32);

  if (sparc32)
    sparc32_supply_fpregset (regcache, regnum, fpregs);
  else
    sparc64_supply_fpregset (regcache, regnum, fpregs);
}
