#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  mctx; int /*<<< orphan*/  lock; int /*<<< orphan*/  timers; } ;
typedef  TYPE_2__ isc__timermgr_t ;
struct TYPE_9__ {scalar_t__ magic; scalar_t__ impmagic; } ;
struct TYPE_11__ {TYPE_1__ common; int /*<<< orphan*/  lock; int /*<<< orphan*/  task; TYPE_2__* manager; } ;
typedef  TYPE_3__ isc__timer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ISC_TIMEREVENT_FIRSTEVENT ; 
 int /*<<< orphan*/  ISC_TIMEREVENT_LASTEVENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC8(isc__timer_t *timer) {
	isc__timermgr_t *manager = timer->manager;

	/*
	 * The caller must ensure it is safe to destroy the timer.
	 */

	FUNC1(&manager->lock);

	(void)FUNC7(timer->task,
				  timer,
				  ISC_TIMEREVENT_FIRSTEVENT,
				  ISC_TIMEREVENT_LASTEVENT,
				  NULL);
	FUNC4(timer);
	FUNC2(manager->timers, timer, link);

	FUNC3(&manager->lock);

	FUNC6(&timer->task);
	FUNC0(&timer->lock);
	timer->common.impmagic = 0;
	timer->common.magic = 0;
	FUNC5(manager->mctx, timer, sizeof(*timer));
}