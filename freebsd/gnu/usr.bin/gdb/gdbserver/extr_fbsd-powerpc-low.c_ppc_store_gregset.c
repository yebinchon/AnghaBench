
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ppc_num_regs ;
 int* ppc_regmap ;
 int supply_register (int,char*) ;

__attribute__((used)) static void
ppc_store_gregset (const void *buf)
{
  int i;

  for (i = 0; i < ppc_num_regs; i++)
 if (ppc_regmap[i] != -1)
  supply_register (i, ((char *) buf) + ppc_regmap[i]);

}
