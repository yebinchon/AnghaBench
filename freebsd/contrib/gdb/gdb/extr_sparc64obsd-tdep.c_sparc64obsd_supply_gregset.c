
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regset {int descr; } ;
struct regcache {int dummy; } ;


 int sparc64_supply_fpregset (struct regcache*,int,char const*) ;
 int sparc64_supply_gregset (int ,struct regcache*,int,char const*) ;

__attribute__((used)) static void
sparc64obsd_supply_gregset (const struct regset *regset,
       struct regcache *regcache,
       int regnum, const void *gregs, size_t len)
{
  const char *regs = gregs;

  sparc64_supply_gregset (regset->descr, regcache, regnum, regs);
  sparc64_supply_fpregset (regcache, regnum, regs + 288);
}
