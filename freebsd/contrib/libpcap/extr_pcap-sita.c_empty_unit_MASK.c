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
struct TYPE_4__ {void* imsg; } ;
typedef  TYPE_1__ unit_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (void*,int) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__** units ; 

__attribute__((used)) static void FUNC3(int chassis, int geoslot) {
	unit_t	*u = &units[chassis][geoslot];

	FUNC0(u);
	if (u->imsg) {											/* then if an inbound message buffer exists */
		void *bigger_buffer;

		bigger_buffer = (char *)FUNC2(u->imsg, 1);				/* and re-allocate the old large buffer into a new small one */
		if (bigger_buffer == NULL) {	/* oops, realloc call failed */
			FUNC1(stderr, "Warning...call to realloc() failed, value of errno is %d\n", errno);
			return;
		}
		u->imsg = bigger_buffer;
	}
}