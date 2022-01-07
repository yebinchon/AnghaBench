
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {int dummy; } ;
struct process_info {TYPE_1__* resume; struct pending_signals* pending_signals; } ;
struct pending_signals {scalar_t__ signal; struct pending_signals* prev; } ;
struct inferior_list_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ sig; scalar_t__ leave_stopped; } ;


 struct process_info* get_thread_process (struct thread_info*) ;
 struct pending_signals* malloc (int) ;

__attribute__((used)) static void
fbsd_queue_one_thread (struct inferior_list_entry *entry)
{
  struct process_info *process;
  struct thread_info *thread;

  thread = (struct thread_info *) entry;
  process = get_thread_process (thread);

  if (process->resume->leave_stopped)
    return;


  if (process->resume->sig != 0)
    {
      struct pending_signals *p_sig;
      p_sig = malloc (sizeof (*p_sig));
      p_sig->prev = process->pending_signals;
      p_sig->signal = process->resume->sig;
      process->pending_signals = p_sig;
    }

  process->resume = ((void*)0);
}
