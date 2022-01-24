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
struct breakpoint {int /*<<< orphan*/  old_data; int /*<<< orphan*/  pc; struct breakpoint* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_memory ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  breakpoint_len ; 
 struct breakpoint* breakpoints ; 
 int /*<<< orphan*/  FUNC0 (struct breakpoint*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* the_target ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (struct breakpoint *bp)
{
  struct breakpoint *cur;

  if (breakpoints == bp)
    {
      breakpoints = bp->next;
      (*the_target->write_memory) (bp->pc, bp->old_data,
				   breakpoint_len);
      FUNC0 (bp);
      return;
    }
  cur = breakpoints;
  while (cur->next)
    {
      if (cur->next == bp)
	{
	  cur->next = bp->next;
	  (*the_target->write_memory) (bp->pc, bp->old_data,
				       breakpoint_len);
	  FUNC0 (bp);
	  return;
	}
    }
  FUNC3 ("Could not find breakpoint in list.");
}