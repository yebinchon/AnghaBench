
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arm_num_regs ;
 int* arm_regmap ;
 int supply_register (int,char*) ;

__attribute__((used)) static void
arm_store_gregset (const void *buf)
{
  int i;

  for (i = 0; i < arm_num_regs; i++)
 if (arm_regmap[i] != -1)
  supply_register (i, ((char *) buf) + arm_regmap[i]);

}
