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
struct breakpoint {void (* handler ) (int /*<<< orphan*/ ) ;struct breakpoint* next; int /*<<< orphan*/  pc; int /*<<< orphan*/  old_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_memory ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* read_memory ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/ * breakpoint_data ; 
 int /*<<< orphan*/  breakpoint_len ; 
 struct breakpoint* breakpoints ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct breakpoint* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct breakpoint*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* the_target ; 

void
FUNC5 (CORE_ADDR where, void (*handler) (CORE_ADDR))
{
  struct breakpoint *bp;

  if (breakpoint_data == NULL)
    FUNC0 ("Target does not support breakpoints.");

  bp = FUNC1 (sizeof (struct breakpoint));
  FUNC2 (bp, 0, sizeof (struct breakpoint));

  (*the_target->read_memory) (where, bp->old_data,
			      breakpoint_len);
  (*the_target->write_memory) (where, breakpoint_data,
			       breakpoint_len);

  bp->pc = where;
  bp->handler = handler;

  bp->next = breakpoints;
  breakpoints = bp;
}