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
typedef  scalar_t__ db_addr_t ;
struct TYPE_4__ {scalar_t__ address; int /*<<< orphan*/  map; struct TYPE_4__* link; } ;

/* Variables and functions */
 TYPE_1__* db_breakpoint_list ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static db_breakpoint_t
FUNC1(vm_map_t map, db_addr_t addr)
{
	register db_breakpoint_t	bkpt;

	for (bkpt = db_breakpoint_list;
	     bkpt != 0;
	     bkpt = bkpt->link)
	{
	    if (FUNC0(bkpt->map, map) &&
		(bkpt->address == addr))
		return (bkpt);
	}
	return (0);
}