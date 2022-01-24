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
struct ub_event_base {int dummy; } ;
struct ub_event {int /*<<< orphan*/ * vmt; int /*<<< orphan*/  magic; } ;
struct my_event {struct ub_event super; int /*<<< orphan*/  ev; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ub_event_base*) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (int,short,void*)) ; 
 int /*<<< orphan*/  UB_EVENT_MAGIC ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  default_event_vmt ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct my_event*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static struct ub_event*
FUNC6(struct ub_event_base* base, int fd,
	void (*cb)(int, short, void*), void* arg)
{
	struct my_event *my_ev = (struct my_event*)FUNC2(1,
		sizeof(struct my_event));

	if (!my_ev)
		return NULL;

	FUNC5(&my_ev->ev, fd, FUNC1(cb), arg);
	if (FUNC3(FUNC0(base)->base, &my_ev->ev) != 0) {
		FUNC4(my_ev);
		return NULL;
	}
	my_ev->super.magic = UB_EVENT_MAGIC;
	my_ev->super.vmt = &default_event_vmt;
	return &my_ev->super;
}