
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct thread {TYPE_1__* td_pcb; } ;
struct debug_monitor_state {int dbg_flags; int * dbg_bcr; int * dbg_bvr; } ;
struct dbreg {int db_info; TYPE_2__* db_regs; } ;
struct TYPE_4__ {int dbr_ctrl; int dbr_addr; } ;
struct TYPE_3__ {struct debug_monitor_state pcb_dbg_regs; } ;


 int DBGMON_ENABLED ;
 int ID_AA64DFR0_BRPs_SHIFT ;
 int ID_AA64DFR0_DebugVer_SHIFT ;
 int ID_AA64DFR0_EL1 ;
 int extract_user_id_field (int ,int ,int*) ;
 int memset (struct dbreg*,int ,int) ;

int
fill_dbregs(struct thread *td, struct dbreg *regs)
{
 struct debug_monitor_state *monitor;
 int count, i;
 uint8_t debug_ver, nbkpts;

 memset(regs, 0, sizeof(*regs));

 extract_user_id_field(ID_AA64DFR0_EL1, ID_AA64DFR0_DebugVer_SHIFT,
     &debug_ver);
 extract_user_id_field(ID_AA64DFR0_EL1, ID_AA64DFR0_BRPs_SHIFT,
     &nbkpts);






 count = nbkpts + 1;

 regs->db_info = debug_ver;
 regs->db_info <<= 8;
 regs->db_info |= count;

 monitor = &td->td_pcb->pcb_dbg_regs;
 if ((monitor->dbg_flags & DBGMON_ENABLED) != 0) {
  for (i = 0; i < count; i++) {
   regs->db_regs[i].dbr_addr = monitor->dbg_bvr[i];
   regs->db_regs[i].dbr_ctrl = monitor->dbg_bcr[i];
  }
 }

 return (0);
}
