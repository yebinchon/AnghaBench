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
struct ub_event_base {int dummy; } ;
struct ub_event {int dummy; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ub_event_base*) ; 
 struct ub_event* FUNC1 (struct event*) ; 
 int /*<<< orphan*/  FUNC2 (short) ; 
 int /*<<< orphan*/  FUNC3 (void (*) (int,short,void*)) ; 
 scalar_t__ FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (struct event*,int /*<<< orphan*/ ,int,short,void (*) (int,short,void*),void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct event*) ; 
 int /*<<< orphan*/  FUNC7 (struct event*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct event*) ; 

struct ub_event*
FUNC9(struct ub_event_base* base, int fd, short bits,
	void (*cb)(int, short, void*), void* arg)
{
	struct event *ev = (struct event*)FUNC4(1, sizeof(struct event));

	if (!ev)
		return NULL;

#ifndef HAVE_EVENT_ASSIGN
	FUNC7(ev, fd, FUNC2(bits), FUNC3(cb), arg);
	if (FUNC6(FUNC0(base), ev) != 0) {
		FUNC8(ev);
		return NULL;
	}
#else
	if (event_assign(ev, AS_EVENT_BASE(base), fd, bits, cb, arg) != 0) {
		free(ev);
		return NULL;
	}
#endif
	return FUNC1(ev);
}