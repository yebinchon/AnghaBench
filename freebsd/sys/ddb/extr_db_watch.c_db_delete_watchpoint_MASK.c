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
typedef  TYPE_1__* db_watchpoint_t ;
typedef  scalar_t__ db_addr_t ;
struct TYPE_4__ {scalar_t__ loaddr; scalar_t__ hiaddr; struct TYPE_4__* link; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* db_watchpoint_list ; 

__attribute__((used)) static void
FUNC3(vm_map_t map, db_addr_t addr)
{
	db_watchpoint_t	watch;
	db_watchpoint_t	*prev;

	for (prev = &db_watchpoint_list;
	     (watch = *prev) != 0;
	     prev = &watch->link)
	    if (FUNC0(watch->map, map) &&
		(watch->loaddr <= addr) &&
		(addr < watch->hiaddr)) {
		*prev = watch->link;
		FUNC2(watch);
		return;
	    }

	FUNC1("Not set.\n");
}