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
struct process_info {TYPE_1__* resume; int /*<<< orphan*/  head; scalar_t__ stepping; } ;
struct inferior_list_entry {int dummy; } ;
struct TYPE_2__ {int thread; int step; int /*<<< orphan*/  sig; scalar_t__ leave_stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct process_info* FUNC1 (struct thread_info*) ; 

__attribute__((used)) static void
FUNC2 (struct inferior_list_entry *entry)
{
  struct process_info *process;
  struct thread_info *thread;
  int step;

  thread = (struct thread_info *) entry;
  process = FUNC1 (thread);

  if (process->resume->leave_stopped)
    return;

  if (process->resume->thread == -1)
    step = process->stepping || process->resume->step;
  else
    step = process->resume->step;

  FUNC0 (&process->head, step, process->resume->sig);

  process->resume = NULL;
}