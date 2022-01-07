
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparc_gregset {int dummy; } ;
struct regcache {int dummy; } ;


 int current_gdbarch ;
 int gdbarch_ptr_bit (int ) ;
 int sparc32_supply_gregset (int *,struct regcache*,int,void const*) ;
 int sparc32nbsd_gregset ;
 int sparc64_supply_gregset (int *,struct regcache*,int,void const*) ;
 int sparc64nbsd_gregset ;

__attribute__((used)) static void
sparc64nbsd_supply_gregset (const struct sparc_gregset *gregset,
       struct regcache *regcache,
       int regnum, const void *gregs)
{
  int sparc32 = (gdbarch_ptr_bit (current_gdbarch) == 32);

  if (sparc32)
    sparc32_supply_gregset (&sparc32nbsd_gregset, regcache, regnum, gregs);
  else
    sparc64_supply_gregset (&sparc64nbsd_gregset, regcache, regnum, gregs);
}
