
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ wg_restart; } ;


 int LOG_ERR ;
 int LogLevel ;
 int NOQID ;
 scalar_t__ NoMoreRunners ;
 int NumWorkGroups ;
 int RestartWorkGroup ;
 int SIGCHLD ;
 TYPE_1__* WorkGrp ;
 int restart_work_group (int) ;
 int sm_blocksignal (int ) ;
 int sm_releasesignal (int ) ;
 int sm_syslog (int ,int ,char*,int,scalar_t__) ;

void
restart_marked_work_groups()
{
 int i;
 int wasblocked;

 if (NoMoreRunners)
  return;


 wasblocked = sm_blocksignal(SIGCHLD);

 for (i = 0; i < NumWorkGroups; i++)
 {
  if (WorkGrp[i].wg_restart >= 0)
  {
   if (LogLevel > 8)
    sm_syslog(LOG_ERR, NOQID,
       "restart queue runner=%d due to signal 0x%x",
       i, WorkGrp[i].wg_restart);
   restart_work_group(i);
  }
 }
 RestartWorkGroup = 0;

 if (wasblocked == 0)
  (void) sm_releasesignal(SIGCHLD);
}
