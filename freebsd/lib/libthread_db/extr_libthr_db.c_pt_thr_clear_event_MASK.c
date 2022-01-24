#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ th_thread; TYPE_2__* th_ta; } ;
typedef  TYPE_1__ td_thrhandle_t ;
struct TYPE_5__ {scalar_t__ thread_off_event_mask; int /*<<< orphan*/  ph; } ;
typedef  TYPE_2__ td_thragent_t ;
typedef  int /*<<< orphan*/  td_thr_events_t ;
typedef  int /*<<< orphan*/  td_err_e ;
typedef  int /*<<< orphan*/  mask ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static td_err_e
FUNC4(const td_thrhandle_t *th, td_thr_events_t *setp)
{
	const td_thragent_t *ta = th->th_ta;
	td_thr_events_t mask;
	int ret;

	FUNC1();
	ret = FUNC2(ta->ph, th->th_thread + ta->thread_off_event_mask,
			&mask, sizeof(mask));
	mask &= ~*setp;
	ret = FUNC3(ta->ph, th->th_thread + ta->thread_off_event_mask,
			&mask, sizeof(mask));
	return (FUNC0(ret));
}