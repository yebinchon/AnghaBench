
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int DBG_REG_BASE_BCR ;
 int DBG_REG_BASE_BVR ;
 int DBG_REG_BASE_WCR ;
 int DBG_REG_BASE_WVR ;
 int DBG_WB_BCR ;
 int DBG_WB_BVR ;
 int DBG_WB_WCR ;
 int DBG_WB_WVR ;
 int SWITCH_CASES_WRITE_WB_REG (int ,int ,int ) ;
 int isb () ;
 int printf (char*,int) ;

__attribute__((used)) static void
dbg_wb_write_reg(int reg, int n, uint64_t val)
{
 switch (reg + n) {
 SWITCH_CASES_WRITE_WB_REG(DBG_WB_WVR, DBG_REG_BASE_WVR, val);
 SWITCH_CASES_WRITE_WB_REG(DBG_WB_WCR, DBG_REG_BASE_WCR, val);
 SWITCH_CASES_WRITE_WB_REG(DBG_WB_BVR, DBG_REG_BASE_BVR, val);
 SWITCH_CASES_WRITE_WB_REG(DBG_WB_BCR, DBG_REG_BASE_BCR, val);
 default:
  printf("trying to write to wrong debug register %d\n", n);
  return;
 }
 isb();
}
