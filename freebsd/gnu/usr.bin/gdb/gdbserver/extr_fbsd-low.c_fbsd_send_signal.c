
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process_info {int lwpid; } ;


 scalar_t__ cont_thread ;
 int current_inferior ;
 struct process_info* get_thread_process (int ) ;
 int kill (int,int) ;

__attribute__((used)) static void
fbsd_send_signal (int signum)
{
  extern int signal_pid;

  if (cont_thread > 0)
    {
      struct process_info *process;

      process = get_thread_process (current_inferior);
      kill (process->lwpid, signum);
    }
  else
    kill (signal_pid, signum);
}
