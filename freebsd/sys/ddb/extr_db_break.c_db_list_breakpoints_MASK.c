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
typedef  TYPE_1__* db_breakpoint_t ;
struct TYPE_2__ {int /*<<< orphan*/  address; int /*<<< orphan*/  init_count; scalar_t__ map; struct TYPE_2__* link; } ;

/* Variables and functions */
 int /*<<< orphan*/  DB_STGY_PROC ; 
 scalar_t__ db_breakpoint_list ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{
	register db_breakpoint_t	bkpt;

	if (db_breakpoint_list == 0) {
	    FUNC1("No breakpoints set\n");
	    return;
	}

	FUNC1(" Map      Count    Address\n");
	for (bkpt = db_breakpoint_list;
	     bkpt != 0;
	     bkpt = bkpt->link) {
	    FUNC1("%s%8p %5d    ",
		      FUNC0(bkpt->map) ? "*" : " ",
		      (void *)bkpt->map, bkpt->init_count);
	    FUNC2(bkpt->address, DB_STGY_PROC);
	    FUNC1("\n");
	}
}