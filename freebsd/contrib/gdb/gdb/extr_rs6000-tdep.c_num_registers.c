
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {int pseudo; } ;



__attribute__((used)) static int
num_registers (const struct reg *reg_list, int num_tot_regs)
{
  int i;
  int nregs = 0;

  for (i = 0; i < num_tot_regs; i++)
    if (!reg_list[i].pseudo)
      nregs++;

  return nregs;
}
