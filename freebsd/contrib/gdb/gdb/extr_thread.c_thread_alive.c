
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int ptid; } ;


 int PIDGET (int ) ;
 int pid_to_ptid (int) ;
 int target_thread_alive (int ) ;

__attribute__((used)) static int
thread_alive (struct thread_info *tp)
{
  if (PIDGET (tp->ptid) == -1)
    return 0;
  if (!target_thread_alive (tp->ptid))
    {
      tp->ptid = pid_to_ptid (-1);
      return 0;
    }
  return 1;
}
