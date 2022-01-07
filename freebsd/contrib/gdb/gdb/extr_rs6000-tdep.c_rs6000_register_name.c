
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {char const* name; } ;
struct gdbarch_tdep {int wordsize; struct reg* regs; } ;


 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int regsize (struct reg const*,int ) ;

__attribute__((used)) static const char *
rs6000_register_name (int n)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  const struct reg *reg = tdep->regs + n;

  if (!regsize (reg, tdep->wordsize))
    return ((void*)0);
  return reg->name;
}
