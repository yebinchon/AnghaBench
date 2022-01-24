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
 int /*<<< orphan*/  FUNC1 (short) ; 
 int /*<<< orphan*/  FUNC2 (void (*) (int,short,void*)) ; 
 int /*<<< orphan*/  UB_EVENT_MAGIC ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  default_event_vmt ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct my_event*) ; 

__attribute__((used)) static struct ub_event*
FUNC7(struct ub_event_base* base, int fd, short bits,
	void (*cb)(int, short, void*), void* arg)
{
	struct my_event *my_ev = (struct my_event*)FUNC3(1,
		sizeof(struct my_event));

	if (!my_ev)
		return NULL;

	FUNC5(&my_ev->ev, fd, FUNC1(bits), FUNC2(cb), arg);
	if (FUNC4(FUNC0(base)->base, &my_ev->ev) != 0) {
		FUNC6(my_ev);
		return NULL;
	}
	my_ev->super.magic = UB_EVENT_MAGIC;
	my_ev->super.vmt = &default_event_vmt;
	return &my_ev->super;
}