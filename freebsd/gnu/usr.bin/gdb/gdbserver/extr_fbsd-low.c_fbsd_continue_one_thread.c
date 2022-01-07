
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {int dummy; } ;
struct process_info {TYPE_1__* resume; int head; scalar_t__ stepping; } ;
struct inferior_list_entry {int dummy; } ;
struct TYPE_2__ {int thread; int step; int sig; scalar_t__ leave_stopped; } ;


 int fbsd_resume_one_process (int *,int,int ) ;
 struct process_info* get_thread_process (struct thread_info*) ;

__attribute__((used)) static void
fbsd_continue_one_thread (struct inferior_list_entry *entry)
{
  struct process_info *process;
  struct thread_info *thread;
  int step;

  thread = (struct thread_info *) entry;
  process = get_thread_process (thread);

  if (process->resume->leave_stopped)
    return;

  if (process->resume->thread == -1)
    step = process->stepping || process->resume->step;
  else
    step = process->resume->step;

  fbsd_resume_one_process (&process->head, step, process->resume->sig);

  process->resume = ((void*)0);
}
