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
struct ub_event_base {int dummy; } ;
struct ub_event {int dummy; } ;
struct timeval {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ev; } ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ub_event*) ; 
 TYPE_1__* FUNC1 (struct ub_event_base*) ; 
 int /*<<< orphan*/  EV_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (void (*) (int,short,void*)) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static int
FUNC6(struct ub_event* ev, struct ub_event_base* base,
	void (*cb)(int, short, void*), void* arg, struct timeval* tv)
{
	FUNC4(&FUNC0(ev)->ev, -1, EV_TIMEOUT,FUNC2(cb),arg);
	if (FUNC3(FUNC1(base)->base, &FUNC0(ev)->ev)
		!= 0)
		return -1;
	return FUNC5(&FUNC0(ev)->ev, tv);
}