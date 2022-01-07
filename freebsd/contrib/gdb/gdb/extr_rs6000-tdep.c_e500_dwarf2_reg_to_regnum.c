
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ppc_gp0_regnum; } ;


 int current_gdbarch ;
 TYPE_1__* gdbarch_tdep (int ) ;

__attribute__((used)) static int
e500_dwarf2_reg_to_regnum (int num)
{
  int regnum;
  if (0 <= num && num <= 31)
    return num + gdbarch_tdep (current_gdbarch)->ppc_gp0_regnum;
  else
    return num;
}
