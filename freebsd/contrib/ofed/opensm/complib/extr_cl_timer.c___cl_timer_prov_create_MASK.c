#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cl_timer_prov_t ;
typedef  int /*<<< orphan*/  cl_status_t ;
struct TYPE_4__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CL_ERROR ; 
 int /*<<< orphan*/  CL_INSUFFICIENT_MEMORY ; 
 int /*<<< orphan*/  CL_SUCCESS ; 
 int /*<<< orphan*/  __cl_timer_prov_cb ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* gp_timer_prov ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

cl_status_t FUNC8(void)
{
	FUNC0(gp_timer_prov == NULL);

	gp_timer_prov = FUNC3(sizeof(cl_timer_prov_t));
	if (!gp_timer_prov)
		return (CL_INSUFFICIENT_MEMORY);
	else
		FUNC4(gp_timer_prov, 0, sizeof(cl_timer_prov_t));

	FUNC2(&gp_timer_prov->queue);

	FUNC7(&gp_timer_prov->mutex, NULL);
	FUNC5(&gp_timer_prov->cond, NULL);

	if (FUNC6(&gp_timer_prov->thread, NULL,
			   __cl_timer_prov_cb, NULL)) {
		FUNC1();
		return (CL_ERROR);
	}

	return (CL_SUCCESS);
}