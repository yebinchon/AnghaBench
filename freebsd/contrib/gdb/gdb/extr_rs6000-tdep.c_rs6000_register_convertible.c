
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reg {int fpr; } ;
struct TYPE_2__ {struct reg* regs; } ;


 int current_gdbarch ;
 TYPE_1__* gdbarch_tdep (int ) ;

__attribute__((used)) static int
rs6000_register_convertible (int n)
{
  const struct reg *reg = gdbarch_tdep (current_gdbarch)->regs + n;
  return reg->fpr;
}
