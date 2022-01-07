
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int npc_regnum; int pc_regnum; } ;
typedef int ptid_t ;
typedef scalar_t__ CORE_ADDR ;


 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int write_register_pid (int ,scalar_t__,int ) ;

__attribute__((used)) static void
sparc_write_pc (CORE_ADDR pc, ptid_t ptid)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);

  write_register_pid (tdep->pc_regnum, pc, ptid);
  write_register_pid (tdep->npc_regnum, pc + 4, ptid);
}
