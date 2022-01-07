
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef unsigned int u_int ;
typedef enum dbg_t { ____Placeholder_dbg_t } dbg_t ;
typedef int db_expr_t ;


 int DBG_REG_BASE_BCR ;
 int DBG_REG_BASE_BVR ;
 int DBG_REG_BASE_WCR ;
 int DBG_REG_BASE_WVR ;


 int DBG_WB_CTRL_E ;
 int db_printf (char*) ;
 unsigned int dbg_breakpoint_num ;
 unsigned int dbg_watchpoint_num ;
 int dbg_wb_read_reg (int ,unsigned int) ;

__attribute__((used)) static u_int
dbg_find_slot(enum dbg_t type, db_expr_t addr)
{
 uint32_t reg_addr, reg_ctrl;
 u_int max, i;

 switch(type) {
 case 129:
  max = dbg_breakpoint_num;
  reg_addr = DBG_REG_BASE_BVR;
  reg_ctrl = DBG_REG_BASE_BCR;
  break;
 case 128:
  max = dbg_watchpoint_num;
  reg_addr = DBG_REG_BASE_WVR;
  reg_ctrl = DBG_REG_BASE_WCR;
  break;
 default:
  db_printf("Unsupported debug type\n");
  return (~0U);
 }

 for (i = 0; i < max; i++) {
  if ((dbg_wb_read_reg(reg_addr, i) == addr) &&
      ((dbg_wb_read_reg(reg_ctrl, i) & DBG_WB_CTRL_E) != 0))
   return (i);
 }

 return (~0U);
}
