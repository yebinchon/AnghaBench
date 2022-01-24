#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread_info {int dummy; } ;
struct process_info {TYPE_1__* resume; struct pending_signals* pending_signals; } ;
struct pending_signals {scalar_t__ signal; struct pending_signals* prev; } ;
struct inferior_list_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ sig; scalar_t__ leave_stopped; } ;

/* Variables and functions */
 struct process_info* FUNC0 (struct thread_info*) ; 
 struct pending_signals* FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2 (struct inferior_list_entry *entry)
{
  struct process_info *process;
  struct thread_info *thread;

  thread = (struct thread_info *) entry;
  process = FUNC0 (thread);

  if (process->resume->leave_stopped)
    return;

  /* If we have a new signal, enqueue the signal.  */
  if (process->resume->sig != 0)
    {
      struct pending_signals *p_sig;
      p_sig = FUNC1 (sizeof (*p_sig));
      p_sig->prev = process->pending_signals;
      p_sig->signal = process->resume->sig;
      process->pending_signals = p_sig;
    }

  process->resume = NULL;
}