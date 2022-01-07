
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ppc_mq_regnum; int ppc_lr_regnum; int ppc_ctr_regnum; int ppc_xer_regnum; } ;


 int current_gdbarch ;
 TYPE_1__* gdbarch_tdep (int ) ;

__attribute__((used)) static int
rs6000_stab_reg_to_regnum (int num)
{
  int regnum;
  switch (num)
    {
    case 64:
      regnum = gdbarch_tdep (current_gdbarch)->ppc_mq_regnum;
      break;
    case 65:
      regnum = gdbarch_tdep (current_gdbarch)->ppc_lr_regnum;
      break;
    case 66:
      regnum = gdbarch_tdep (current_gdbarch)->ppc_ctr_regnum;
      break;
    case 76:
      regnum = gdbarch_tdep (current_gdbarch)->ppc_xer_regnum;
      break;
    default:
      regnum = num;
      break;
    }
  return regnum;
}
