
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fpregset_t ;


 int S390_NUM_REGS ;
 int current_regcache ;
 int regcache_raw_collect (int ,int,char*) ;
 int* regmap_fpregset ;

void
fill_fpregset (fpregset_t *regp, int regno)
{
  int i;
  for (i = 0; i < S390_NUM_REGS; i++)
    if (regmap_fpregset[i] != -1)
      if (regno == -1 || regno == i)
        regcache_raw_collect (current_regcache, i,
         ((char *)regp) + regmap_fpregset[i]);
}
