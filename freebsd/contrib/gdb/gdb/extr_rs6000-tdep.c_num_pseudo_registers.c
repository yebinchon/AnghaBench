
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {scalar_t__ pseudo; } ;



__attribute__((used)) static int
num_pseudo_registers (const struct reg *reg_list, int num_tot_regs)
{
  int i;
  int npregs = 0;

  for (i = 0; i < num_tot_regs; i++)
    if (reg_list[i].pseudo)
      npregs ++;

  return npregs;
}
