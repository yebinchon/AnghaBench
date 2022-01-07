
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct dbreg {int * dbg_wcr; int * dbg_wvr; } ;


 int DBG_REG_BASE_WCR ;
 int DBG_REG_BASE_WVR ;
 int PCPU_GET (int ) ;
 scalar_t__ PCPU_PTR (int ) ;
 int PCPU_SET (int ,int ) ;

 int PC_DBREG_CMD_NONE ;
 int atomic_thread_fence_acq () ;
 int dbg_capable () ;
 size_t dbg_watchpoint_num ;
 int dbg_wb_write_reg (int ,size_t,int ) ;
 int dbreg ;
 int dbreg_cmd ;

void
dbg_resume_dbreg(void)
{
 struct dbreg *d;
 u_int i;





 if (!dbg_capable())
  return;

 atomic_thread_fence_acq();

 switch (PCPU_GET(dbreg_cmd)) {
 case 128:
  d = (struct dbreg *)PCPU_PTR(dbreg);


  for (i = 0; i < dbg_watchpoint_num; i++) {
   dbg_wb_write_reg(DBG_REG_BASE_WVR, i, d->dbg_wvr[i]);
   dbg_wb_write_reg(DBG_REG_BASE_WCR, i, d->dbg_wcr[i]);
  }

  PCPU_SET(dbreg_cmd, PC_DBREG_CMD_NONE);
  break;
 }
}
