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
typedef  TYPE_1__* db_watchpoint_t ;
struct TYPE_2__ {scalar_t__ loaddr; scalar_t__ hiaddr; scalar_t__ map; struct TYPE_2__* link; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ db_watchpoint_list ; 

__attribute__((used)) static void
FUNC2(void)
{
	db_watchpoint_t	watch;

	if (db_watchpoint_list == 0) {
	    FUNC1("No watchpoints set\n");
	    return;
	}

#ifdef __LP64__
	FUNC1(" Map                Address          Size\n");
#else
	db_printf(" Map        Address  Size\n");
#endif
	for (watch = db_watchpoint_list;
	     watch != 0;
	     watch = watch->link)
#ifdef __LP64__
	    FUNC1("%s%16p  %16lx  %lx\n",
#else
	    db_printf("%s%8p  %8lx  %lx\n",
#endif
		      FUNC0(watch->map) ? "*" : " ",
		      (void *)watch->map, (long)watch->loaddr,
		      (long)watch->hiaddr - (long)watch->loaddr);
}