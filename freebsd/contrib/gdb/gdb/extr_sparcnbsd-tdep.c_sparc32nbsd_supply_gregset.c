
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regset {int descr; } ;
struct regcache {int dummy; } ;


 int sparc32_supply_fpregset (struct regcache*,int,char const*) ;
 int sparc32_supply_gregset (int ,struct regcache*,int,void const*) ;

__attribute__((used)) static void
sparc32nbsd_supply_gregset (const struct regset *regset,
       struct regcache *regcache,
       int regnum, const void *gregs, size_t len)
{
  sparc32_supply_gregset (regset->descr, regcache, regnum, gregs);




  if (len >= 212)
    sparc32_supply_fpregset (regcache, regnum, (const char *) gregs + 80);
}
