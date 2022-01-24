#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  thread_event_mask_addr; int /*<<< orphan*/  ph; } ;
typedef  TYPE_1__ td_thragent_t ;
typedef  int /*<<< orphan*/  td_thr_events_t ;
typedef  int /*<<< orphan*/  td_err_e ;
typedef  int /*<<< orphan*/  mask ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static td_err_e
FUNC4(const td_thragent_t *ta, td_thr_events_t *events)
{
	td_thr_events_t mask;
	int ret;

	FUNC1();
	ret = FUNC2(ta->ph, ta->thread_event_mask_addr, &mask,
		sizeof(mask));
	if (ret != 0)
		return (FUNC0(ret));
	mask &= ~*events;
	ret = FUNC3(ta->ph, ta->thread_event_mask_addr, &mask,
		sizeof(mask));
	return (FUNC0(ret));
}