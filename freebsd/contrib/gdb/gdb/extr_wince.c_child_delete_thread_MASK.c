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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ info_verbose ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_1__ thread_head ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5 (DWORD id)
{
  thread_info *th;

  if (info_verbose)
    FUNC2 ("[Deleting %s]\n", FUNC3 (id));
  FUNC1 (id);

  for (th = &thread_head;
       th->next != NULL && th->next->id != id;
       th = th->next)
    continue;

  if (th->next != NULL)
    {
      thread_info *here = th->next;
      th->next = here->next;
      FUNC0 (here->h);
      FUNC4 (here);
    }
}