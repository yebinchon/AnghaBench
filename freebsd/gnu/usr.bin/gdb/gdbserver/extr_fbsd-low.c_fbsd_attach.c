
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process_info {scalar_t__ stop_expected; } ;


 int all_processes ;
 int fbsd_attach_lwp (int,int) ;
 scalar_t__ find_inferior_id (int *,int) ;

int
fbsd_attach (int pid)
{
  struct process_info *process;

  fbsd_attach_lwp (pid, pid);


  process = (struct process_info *) find_inferior_id (&all_processes, pid);
  process->stop_expected = 0;

  return 0;
}
