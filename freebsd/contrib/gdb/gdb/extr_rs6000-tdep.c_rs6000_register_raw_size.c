
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {int dummy; } ;
struct gdbarch_tdep {int wordsize; struct reg* regs; } ;


 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int regsize (struct reg const*,int ) ;

__attribute__((used)) static int
rs6000_register_raw_size (int n)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  const struct reg *reg = tdep->regs + n;
  return regsize (reg, tdep->wordsize);
}
