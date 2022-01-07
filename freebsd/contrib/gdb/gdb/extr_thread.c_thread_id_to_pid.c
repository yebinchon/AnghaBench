
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int ptid; } ;
typedef int ptid_t ;


 struct thread_info* find_thread_id (int) ;
 int pid_to_ptid (int) ;

ptid_t
thread_id_to_pid (int num)
{
  struct thread_info *thread = find_thread_id (num);
  if (thread)
    return thread->ptid;
  else
    return pid_to_ptid (-1);
}
