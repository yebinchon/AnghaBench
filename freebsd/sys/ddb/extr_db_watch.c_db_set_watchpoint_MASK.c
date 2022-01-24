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
typedef  scalar_t__ vm_size_t ;
typedef  int /*<<< orphan*/ * vm_map_t ;
typedef  TYPE_1__* db_watchpoint_t ;
typedef  scalar_t__ db_addr_t ;
struct TYPE_4__ {scalar_t__ loaddr; scalar_t__ hiaddr; struct TYPE_4__* link; int /*<<< orphan*/ * map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 () ; 
 TYPE_1__* db_watchpoint_list ; 
 int db_watchpoints_inserted ; 

__attribute__((used)) static void
FUNC3(vm_map_t map, db_addr_t addr, vm_size_t size)
{
	db_watchpoint_t	watch;

	if (map == NULL) {
	    FUNC1("No map.\n");
	    return;
	}

	/*
	 *	Should we do anything fancy with overlapping regions?
	 */

	for (watch = db_watchpoint_list;
	     watch != 0;
	     watch = watch->link)
	    if (FUNC0(watch->map, map) &&
		(watch->loaddr == addr) &&
		(watch->hiaddr == addr+size)) {
		FUNC1("Already set.\n");
		return;
	    }

	watch = FUNC2();
	if (watch == 0) {
	    FUNC1("Too many watchpoints.\n");
	    return;
	}

	watch->map = map;
	watch->loaddr = addr;
	watch->hiaddr = addr+size;

	watch->link = db_watchpoint_list;
	db_watchpoint_list = watch;

	db_watchpoints_inserted = false;
}