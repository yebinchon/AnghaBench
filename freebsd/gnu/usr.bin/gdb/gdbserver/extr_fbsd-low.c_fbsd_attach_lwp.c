
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process_info {int stop_expected; } ;


 int PT_ATTACH ;
 int _exit (int) ;
 scalar_t__ add_process (int) ;
 int add_thread (int,struct process_info*) ;
 int errno ;
 int fflush (int ) ;
 int fprintf (int ,char*,int,char*,int) ;
 scalar_t__ ptrace (int ,int,int ,int ) ;
 int stderr ;
 int stopping_threads ;
 char* strerror (int) ;
 int using_threads ;

void
fbsd_attach_lwp (int pid, int tid)
{
  struct process_info *new_process;

  if (ptrace (PT_ATTACH, pid, 0, 0) != 0)
    {
      fprintf (stderr, "Cannot attach to process %d: %s (%d)\n", pid,
        strerror (errno), errno);
      fflush (stderr);


      if (!using_threads)
 _exit (0177);
      return;
    }

  new_process = (struct process_info *) add_process (pid);
  add_thread (tid, new_process);
  if (! stopping_threads)
    new_process->stop_expected = 1;
}
