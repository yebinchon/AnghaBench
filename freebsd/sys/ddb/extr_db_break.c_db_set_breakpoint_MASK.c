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
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  TYPE_1__* db_breakpoint_t ;
typedef  int /*<<< orphan*/  db_addr_t ;
struct TYPE_4__ {int init_count; int count; struct TYPE_4__* link; scalar_t__ flags; int /*<<< orphan*/  address; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 TYPE_1__* db_breakpoint_list ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(vm_map_t map, db_addr_t addr, int count)
{
	register db_breakpoint_t	bkpt;

	if (FUNC1(map, addr)) {
	    FUNC2("Already set.\n");
	    return;
	}

	bkpt = FUNC0();
	if (bkpt == 0) {
	    FUNC2("Too many breakpoints.\n");
	    return;
	}

	bkpt->map = map;
	bkpt->address = addr;
	bkpt->flags = 0;
	bkpt->init_count = count;
	bkpt->count = count;

	bkpt->link = db_breakpoint_list;
	db_breakpoint_list = bkpt;
}