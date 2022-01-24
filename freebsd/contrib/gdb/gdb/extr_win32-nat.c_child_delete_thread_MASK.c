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
struct TYPE_4__ {scalar_t__ id; int /*<<< orphan*/  h; struct TYPE_4__* next; } ;
typedef  TYPE_1__ thread_info ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ info_verbose ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ thread_head ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6 (DWORD id)
{
  thread_info *th;

  if (info_verbose)
    FUNC3 ("[Deleting %s]\n", FUNC4 (FUNC2 (id)));
  FUNC1 (FUNC2 (id));

  for (th = &thread_head;
       th->next != NULL && th->next->id != id;
       th = th->next)
    continue;

  if (th->next != NULL)
    {
      thread_info *here = th->next;
      th->next = here->next;
      FUNC0 (here->h);
      FUNC5 (here);
    }
}