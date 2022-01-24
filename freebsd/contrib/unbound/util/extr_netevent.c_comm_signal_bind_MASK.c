#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct internal_signal {struct internal_signal* next; int /*<<< orphan*/ * ev; } ;
struct comm_signal {struct internal_signal* ev_signal; TYPE_2__* base; } ;
struct TYPE_4__ {TYPE_1__* eb; } ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  comm_signal_callback ; 
 int /*<<< orphan*/  FUNC1 (struct internal_signal*) ; 
 int /*<<< orphan*/  FUNC2 (struct comm_signal*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct comm_signal*) ; 

int 
FUNC7(struct comm_signal* comsig, int sig)
{
	struct internal_signal* entry = (struct internal_signal*)FUNC0(1, 
		sizeof(struct internal_signal));
	if(!entry) {
		FUNC3("malloc failed");
		return 0;
	}
	FUNC2(comsig);
	/* add signal event */
	entry->ev = FUNC6(comsig->base->eb->base, sig,
		comm_signal_callback, comsig);
	if(entry->ev == NULL) {
		FUNC3("Could not create signal event");
		FUNC1(entry);
		return 0;
	}
	if(FUNC5(entry->ev, NULL) != 0) {
		FUNC3("Could not add signal handler");
		FUNC4(entry->ev);
		FUNC1(entry);
		return 0;
	}
	/* link into list */
	entry->next = comsig->ev_signal;
	comsig->ev_signal = entry;
	return 1;
}