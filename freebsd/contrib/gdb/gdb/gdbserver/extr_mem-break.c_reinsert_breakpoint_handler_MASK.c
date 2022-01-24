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
struct breakpoint {scalar_t__ reinserting; int /*<<< orphan*/  pc; struct breakpoint* breakpoint_to_reinsert; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_memory ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  breakpoint_data ; 
 int /*<<< orphan*/  breakpoint_len ; 
 int /*<<< orphan*/  FUNC0 (struct breakpoint*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct breakpoint* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* the_target ; 

__attribute__((used)) static void
FUNC4 (CORE_ADDR stop_pc)
{
  struct breakpoint *stop_bp, *orig_bp;

  stop_bp = FUNC2 (stop_pc);
  if (stop_bp == NULL)
    FUNC1 ("lost the stopping breakpoint.");

  orig_bp = stop_bp->breakpoint_to_reinsert;
  if (orig_bp == NULL)
    FUNC1 ("no breakpoint to reinsert");

  (*the_target->write_memory) (orig_bp->pc, breakpoint_data,
			       breakpoint_len);
  orig_bp->reinserting = 0;
  FUNC0 (stop_bp);
}