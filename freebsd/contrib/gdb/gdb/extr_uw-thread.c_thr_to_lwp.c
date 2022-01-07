
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {TYPE_1__* private; } ;
typedef int ptid_t ;
struct TYPE_2__ {int lwpid; } ;


 int DBG2 (char*) ;
 int ISTID (int ) ;
 int MKLID (int ,int ) ;
 int PIDGET (int ) ;
 int dbgpid (int ) ;
 struct thread_info* find_thread_pid (int ) ;
 int null_ptid ;
 int pid ;

__attribute__((used)) static ptid_t
thr_to_lwp (ptid_t ptid)
{
  struct thread_info *info;
  ptid_t lid;

  if (!ISTID (ptid))
    lid = ptid;
  else if (!(info = find_thread_pid (ptid)))
    lid = null_ptid;
  else if (!info->private->lwpid)
    lid = null_ptid;
  else
    lid = MKLID (PIDGET (ptid), info->private->lwpid);

  DBG2(("  thr_to_lwp(%s) = %s", dbgpid (pid), dbgpid (lid)));
  return lid;
}
