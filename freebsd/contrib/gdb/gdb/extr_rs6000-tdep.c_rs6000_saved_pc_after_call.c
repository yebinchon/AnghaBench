
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct frame_info {int dummy; } ;
struct TYPE_2__ {int ppc_lr_regnum; } ;
typedef int CORE_ADDR ;


 int current_gdbarch ;
 TYPE_1__* gdbarch_tdep (int ) ;
 int read_register (int ) ;

__attribute__((used)) static CORE_ADDR
rs6000_saved_pc_after_call (struct frame_info *fi)
{
  return read_register (gdbarch_tdep (current_gdbarch)->ppc_lr_regnum);
}
