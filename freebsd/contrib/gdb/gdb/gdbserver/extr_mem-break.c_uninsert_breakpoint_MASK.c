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
struct breakpoint {int reinserting; int /*<<< orphan*/  old_data; int /*<<< orphan*/  pc; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_memory ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  breakpoint_len ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct breakpoint* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* the_target ; 

void
FUNC3 (CORE_ADDR stopped_at)
{
  struct breakpoint *bp;

  bp = FUNC1 (stopped_at);
  if (bp == NULL)
    FUNC0 ("Could not find breakpoint in list (uninserting).");

  (*the_target->write_memory) (bp->pc, bp->old_data,
			       breakpoint_len);
  bp->reinserting = 1;
}