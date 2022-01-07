
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gregset_t ;


 int S390_NUM_REGS ;
 int SUBOFF (int) ;
 int current_regcache ;
 int regcache_raw_supply (int ,int,char*) ;
 int* regmap_gregset ;

void
supply_gregset (gregset_t *regp)
{
  int i;
  for (i = 0; i < S390_NUM_REGS; i++)
    if (regmap_gregset[i] != -1)
      regcache_raw_supply (current_regcache, i,
      (char *)regp + regmap_gregset[i] + SUBOFF (i));
}
