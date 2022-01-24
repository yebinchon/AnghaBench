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
 int /*<<< orphan*/  FUNC2 (void (*) (int,short,void*)) ; 
 scalar_t__ FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct event*) ; 
 scalar_t__ FUNC5 (struct event*,int /*<<< orphan*/ ,int,void (*) (int,short,void*),void*) ; 
 int /*<<< orphan*/  FUNC6 (struct event*) ; 
 int /*<<< orphan*/  FUNC7 (struct event*,int,int /*<<< orphan*/ ,void*) ; 

struct ub_event*
FUNC8(struct ub_event_base* base, int fd,
	void (*cb)(int, short, void*), void* arg)
{
	struct event *ev = (struct event*)FUNC3(1, sizeof(struct event));

	if (!ev)
		return NULL;

#if !HAVE_DECL_EVSIGNAL_ASSIGN
	FUNC7(ev, fd, FUNC2(cb), arg);
	if (FUNC4(FUNC0(base), ev) != 0) {
		FUNC6(ev);
		return NULL;
	}
#else
	if (evsignal_assign(ev, AS_EVENT_BASE(base), fd, cb, arg) != 0) {
		free(ev);
		return NULL;
	}
#endif
	return FUNC1(ev);
}