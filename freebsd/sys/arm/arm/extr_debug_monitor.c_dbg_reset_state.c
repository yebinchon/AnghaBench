
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int DBGPRSR_DLK ;
 int DBGPRSR_PU ;
 int DBG_REG_BASE_BCR ;
 int DBG_REG_BASE_BVR ;
 int DBG_REG_BASE_WCR ;
 int DBG_REG_BASE_WVR ;
 int ENXIO ;




 int PCPU_GET (int ) ;
 int cp14_dbgosdlr_get () ;
 int cp14_dbgoslar_set (int ) ;
 int cp14_dbgprsr_get () ;
 int cp14_dbgvcr_set (int ) ;
 int db_printf (char*,int ) ;
 size_t dbg_breakpoint_num ;
 int dbg_enable_monitor () ;
 int dbg_model ;
 scalar_t__ dbg_ossr ;
 size_t dbg_watchpoint_num ;
 int dbg_wb_write_reg (int ,size_t,int ) ;
 int isb () ;

__attribute__((used)) static int
dbg_reset_state(void)
{
 u_int cpuid;
 size_t i;
 int err;

 cpuid = PCPU_GET(cpuid);
 err = 0;

 switch (dbg_model) {
 case 131:
 case 130:




  err = dbg_enable_monitor();
  if (err != 0)
   return (err);
  goto vectr_clr;
 case 129:

  if ((cp14_dbgprsr_get() & DBGPRSR_PU) == 0)
   err = ENXIO;

  if (err != 0)
   break;

  if (dbg_ossr)
   goto vectr_clr;
  break;
 case 128:

  if ((cp14_dbgosdlr_get() & DBGPRSR_DLK) != 0)
   err = ENXIO;

  break;
 default:
  break;
 }

 if (err != 0) {
  db_printf("Debug facility locked (CPU%d)\n", cpuid);
  return (err);
 }





 if (((dbg_model & 128) != 0) || dbg_ossr) {




  cp14_dbgoslar_set(0);
  isb();
 }

vectr_clr:





 cp14_dbgvcr_set(0);
 isb();
 for (i = 0; i < dbg_watchpoint_num; ++i) {
  dbg_wb_write_reg(DBG_REG_BASE_WCR, i, 0);
  dbg_wb_write_reg(DBG_REG_BASE_WVR, i, 0);
 }

 for (i = 0; i < dbg_breakpoint_num; ++i) {
  dbg_wb_write_reg(DBG_REG_BASE_BCR, i, 0);
  dbg_wb_write_reg(DBG_REG_BASE_BVR, i, 0);
 }

 return (0);
}
