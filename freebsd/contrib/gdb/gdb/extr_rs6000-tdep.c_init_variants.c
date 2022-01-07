
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variant {int nregs; int npregs; int num_tot_regs; int regs; scalar_t__ name; } ;


 int num_pseudo_registers (int ,int ) ;
 int num_registers (int ,int ) ;
 struct variant* variants ;

__attribute__((used)) static void
init_variants (void)
{
  struct variant *v;

  for (v = variants; v->name; v++)
    {
      if (v->nregs == -1)
        v->nregs = num_registers (v->regs, v->num_tot_regs);
      if (v->npregs == -1)
        v->npregs = num_pseudo_registers (v->regs, v->num_tot_regs);
    }
}
