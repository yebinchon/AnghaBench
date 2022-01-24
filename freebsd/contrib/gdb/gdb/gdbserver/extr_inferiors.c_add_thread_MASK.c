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
struct TYPE_2__ {int id; } ;
struct thread_info {void* target_data; TYPE_1__ entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  all_threads ; 
 struct thread_info* current_inferior ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct thread_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct thread_info*,int /*<<< orphan*/ ) ; 

void
FUNC5 (int thread_id, void *target_data)
{
  struct thread_info *new_thread
    = (struct thread_info *) FUNC1 (sizeof (*new_thread));

  FUNC2 (new_thread, 0, sizeof (*new_thread));

  new_thread->entry.id = thread_id;

  FUNC0 (&all_threads, & new_thread->entry);
  
  if (current_inferior == NULL)
    current_inferior = new_thread;

  new_thread->target_data = target_data;
  FUNC4 (new_thread, FUNC3 ());
}