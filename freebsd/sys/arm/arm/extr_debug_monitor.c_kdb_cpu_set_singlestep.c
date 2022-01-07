
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;
typedef int pc ;
typedef int db_expr_t ;
typedef int db_addr_t ;


 int DBG_BKPT_BNT_SLOT ;
 int DBG_BKPT_BT_SLOT ;
 int DBG_REG_BASE_WCR ;
 int DBG_WB_CTRL_E ;
 int FALSE ;
 int INSN_SIZE ;
 int PC_REGS () ;
 int branch_taken (int ,int ) ;
 int db_get_value (int ,int,int ) ;
 int dbg_capable () ;
 int dbg_setup_breakpoint (int ,int ,int ) ;
 scalar_t__ dbg_watchpoint_num ;
 int dbg_wb_read_reg (int ,scalar_t__) ;
 int dbg_wb_write_reg (int ,scalar_t__,int) ;
 scalar_t__ inst_branch (int ) ;
 scalar_t__ inst_call (int ) ;
 scalar_t__ inst_return (int ) ;
 int next_instr_address (int ,int ) ;

void
kdb_cpu_set_singlestep(void)
{
 db_expr_t inst;
 db_addr_t pc, brpc;
 uint32_t wcr;
 u_int i;

 if (!dbg_capable())
  return;






 for (i = 0; i < dbg_watchpoint_num; i++) {
  wcr = dbg_wb_read_reg(DBG_REG_BASE_WCR, i);
  if ((wcr & DBG_WB_CTRL_E) != 0) {
   dbg_wb_write_reg(DBG_REG_BASE_WCR, i,
       (wcr & ~DBG_WB_CTRL_E));
  }
 }

 pc = PC_REGS();

 inst = db_get_value(pc, sizeof(pc), FALSE);
 if (inst_branch(inst) || inst_call(inst) || inst_return(inst)) {
  brpc = branch_taken(inst, pc);
  dbg_setup_breakpoint(brpc, INSN_SIZE, DBG_BKPT_BT_SLOT);
 }
 pc = next_instr_address(pc, 0);
 dbg_setup_breakpoint(pc, INSN_SIZE, DBG_BKPT_BNT_SLOT);
}
