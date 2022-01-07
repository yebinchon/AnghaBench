
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gregset_t ;


 int S390_NUM_REGS ;
 int SUBOFF (int) ;
 int current_regcache ;
 int regcache_raw_collect (int ,int,char*) ;
 int* regmap_gregset ;

void
fill_gregset (gregset_t *regp, int regno)
{
  int i;
  for (i = 0; i < S390_NUM_REGS; i++)
    if (regmap_gregset[i] != -1)
      if (regno == -1 || regno == i)
 regcache_raw_collect (current_regcache, i,
         (char *)regp + regmap_gregset[i] + SUBOFF (i));
}
