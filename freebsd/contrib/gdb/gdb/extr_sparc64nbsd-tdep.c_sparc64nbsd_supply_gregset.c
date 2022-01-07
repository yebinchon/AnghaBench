
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regset {int descr; } ;
struct regcache {int dummy; } ;


 int sparc64_supply_gregset (int ,struct regcache*,int,void const*) ;

__attribute__((used)) static void
sparc64nbsd_supply_gregset (const struct regset *regset,
       struct regcache *regcache,
       int regnum, const void *gregs, size_t len)
{
  sparc64_supply_gregset (regset->descr, regcache, regnum, gregs);
}
