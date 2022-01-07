
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regset {int* descr; } ;
struct regcache {int dummy; } ;


 int S390_NUM_REGS ;
 int regcache_raw_supply (struct regcache*,int,char const*) ;

__attribute__((used)) static void
s390_supply_regset (const struct regset *regset, struct regcache *regcache,
      int regnum, const void *regs, size_t len)
{
  const int *offset = regset->descr;
  int i;

  for (i = 0; i < S390_NUM_REGS; i++)
    {
      if ((regnum == i || regnum == -1) && offset[i] != -1)
 regcache_raw_supply (regcache, i, (const char *)regs + offset[i]);
    }
}
