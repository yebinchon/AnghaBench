#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned int u_int ;
typedef  enum dbg_t { ____Placeholder_dbg_t } dbg_t ;

/* Variables and functions */
#define  DBG_TYPE_BREAKPOINT 129 
#define  DBG_TYPE_WATCHPOINT 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int dbg_breakpoint_num ; 
 scalar_t__ FUNC1 (int,unsigned int) ; 
 unsigned int dbg_watchpoint_num ; 

__attribute__((used)) static u_int
FUNC2(enum dbg_t type)
{
	u_int max, i;

	switch(type) {
	case DBG_TYPE_BREAKPOINT:
		max = dbg_breakpoint_num;
		break;
	case DBG_TYPE_WATCHPOINT:
		max = dbg_watchpoint_num;
		break;
	default:
		FUNC0("Unsupported debug type\n");
		return (~0U);
	}

	for (i = 0; i < max; i++) {
		if (FUNC1(type, i))
			return (i);
	}

	return (~0U);
}