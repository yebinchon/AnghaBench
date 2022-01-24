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
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_3__ {int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; int /*<<< orphan*/  exit; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* gp_timer_prov ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	pthread_t tid;

	if (!gp_timer_prov)
		return;

	tid = gp_timer_prov->thread;
	FUNC5(&gp_timer_prov->mutex);
	gp_timer_prov->exit = TRUE;
	FUNC1(&gp_timer_prov->cond);
	FUNC6(&gp_timer_prov->mutex);
	FUNC3(tid, NULL);

	/* Destroy the mutex and condition variable. */
	FUNC4(&gp_timer_prov->mutex);
	FUNC2(&gp_timer_prov->cond);

	/* Free the memory and reset the global pointer. */
	FUNC0(gp_timer_prov);
	gp_timer_prov = NULL;
}