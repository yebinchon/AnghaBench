
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_4__ {int e_id; } ;
struct TYPE_3__ {scalar_t__ proc_pid; scalar_t__ proc_type; scalar_t__ proc_count; int proc_task; } ;


 int CHK_CUR_RUNNERS (char*,int,scalar_t__) ;
 int CurChildren ;
 TYPE_2__* CurEnv ;
 int CurRunners ;
 scalar_t__ CurrentPid ;
 scalar_t__ DaemonPid ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LogLevel ;
 int NOQID ;
 scalar_t__ NO_PID ;
 scalar_t__ PROC_QUEUE ;
 int ProcListSize ;
 TYPE_1__* ProcListVec ;
 int SIGCHLD ;
 int SM_FREE_CLR (int ) ;
 scalar_t__ kill (scalar_t__,int ) ;
 int sm_blocksignal (int ) ;
 int sm_releasesignal (int ) ;
 int sm_syslog (int ,int ,char*,int,...) ;

void
proc_list_probe()
{
 int i, children;
 int chldwasblocked;
 pid_t pid;

 children = 0;
 chldwasblocked = sm_blocksignal(SIGCHLD);


 for (i = 1; i < ProcListSize; i++)
 {
  pid = ProcListVec[i].proc_pid;
  if (pid == NO_PID || pid == CurrentPid)
   continue;
  if (kill(pid, 0) < 0)
  {
   if (LogLevel > 3)
    sm_syslog(LOG_DEBUG, CurEnv->e_id,
       "proc_list_probe: lost pid %d",
       (int) ProcListVec[i].proc_pid);
   ProcListVec[i].proc_pid = NO_PID;
   SM_FREE_CLR(ProcListVec[i].proc_task);

   if (ProcListVec[i].proc_type == PROC_QUEUE)
   {
    CurRunners -= ProcListVec[i].proc_count;
    CHK_CUR_RUNNERS("proc_list_probe", i,
      ProcListVec[i].proc_count);
   }

   CurChildren--;
  }
  else
  {
   ++children;
  }
 }
 if (CurChildren < 0)
  CurChildren = 0;
 if (chldwasblocked == 0)
  (void) sm_releasesignal(SIGCHLD);
 if (LogLevel > 10 && children != CurChildren && CurrentPid == DaemonPid)
 {
  sm_syslog(LOG_ERR, NOQID,
     "proc_list_probe: found %d children, expected %d",
     children, CurChildren);
 }
}
