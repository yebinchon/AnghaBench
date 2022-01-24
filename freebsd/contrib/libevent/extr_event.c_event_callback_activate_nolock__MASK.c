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
struct event_callback {int evcb_flags; } ;
struct event_base {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct event_base*) ; 
#define  EVLIST_ACTIVE 129 
#define  EVLIST_ACTIVE_LATER 128 
 int EVLIST_FINALIZING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*,struct event_callback*) ; 
 int /*<<< orphan*/  FUNC3 (struct event_base*,struct event_callback*) ; 
 int /*<<< orphan*/  FUNC4 (struct event_base*) ; 

int
FUNC5(struct event_base *base,
    struct event_callback *evcb)
{
	int r = 1;

	if (evcb->evcb_flags & EVLIST_FINALIZING)
		return 0;

	switch (evcb->evcb_flags & (EVLIST_ACTIVE|EVLIST_ACTIVE_LATER)) {
	default:
		FUNC1(0);
	case EVLIST_ACTIVE_LATER:
		FUNC3(base, evcb);
		r = 0;
		break;
	case EVLIST_ACTIVE:
		return 0;
	case 0:
		break;
	}

	FUNC2(base, evcb);

	if (FUNC0(base))
		FUNC4(base);

	return r;
}