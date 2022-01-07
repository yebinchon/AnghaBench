
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int collect_register (int,char*) ;
 int ppc_num_regs ;
 int* ppc_regmap ;

__attribute__((used)) static void
ppc_fill_gregset (void *buf)
{
  int i;

  for (i = 0; i < ppc_num_regs; i++)
 if (ppc_regmap[i] != -1)
  collect_register (i, ((char *) buf) + ppc_regmap[i]);

}
