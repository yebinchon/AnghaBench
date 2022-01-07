
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DBG_WB_BCR ;
 int DBG_WB_BVR ;
 int DBG_WB_WCR ;
 int DBG_WB_WVR ;
 int OP2_SHIFT ;
 int SWITCH_CASES_WRITE_WB_REG (int ,int ) ;
 int db_printf (char*,int) ;
 int isb () ;

__attribute__((used)) static void
dbg_wb_write_reg(int reg, int n, uint32_t val)
{

 switch (reg + n) {
 SWITCH_CASES_WRITE_WB_REG(DBG_WB_WVR, val);
 SWITCH_CASES_WRITE_WB_REG(DBG_WB_WCR, val);
 SWITCH_CASES_WRITE_WB_REG(DBG_WB_BVR, val);
 SWITCH_CASES_WRITE_WB_REG(DBG_WB_BCR, val);
 default:
  db_printf(
      "trying to write to CP14 reg. using wrong opc2 %d\n",
      reg >> OP2_SHIFT);
 }
 isb();
}
