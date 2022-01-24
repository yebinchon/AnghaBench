#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  h; struct TYPE_4__* next; } ;
typedef  TYPE_1__ thread_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ thread_head ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  thread_info *th = &thread_head;

  FUNC0 (("gdb: child_init_thread_list\n"));
  FUNC2 ();
  while (th->next != NULL)
    {
      thread_info *here = th->next;
      th->next = here->next;
      (void) FUNC1 (here->h);
      FUNC3 (here);
    }
}