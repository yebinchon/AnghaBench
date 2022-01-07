
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {TYPE_1__* private; } ;
typedef int ptid_t ;
struct TYPE_2__ {int thrid; } ;


 int DBG2 (char*) ;
 scalar_t__ ISTID (int ) ;
 int LIDGET (int ) ;
 int MKTID (int ,int ) ;
 int PIDGET (int ) ;
 int dbgpid (int ) ;
 struct thread_info* find_thread_lwp (int) ;

__attribute__((used)) static ptid_t
lwp_to_thr (ptid_t ptid)
{
  struct thread_info *info;
  int lwpid;
  ptid_t tid = ptid;

  if (ISTID (ptid))
    goto done;
  if (!(lwpid = LIDGET (ptid)))
    goto done;
  if (!(info = find_thread_lwp (lwpid)))
    goto done;
  tid = MKTID (PIDGET (ptid), info->private->thrid);

 done:
  DBG2((ISTID (tid) ? ((void*)0) : "lwp_to_thr: no thr for %s", dbgpid (ptid)));
  return tid;
}
