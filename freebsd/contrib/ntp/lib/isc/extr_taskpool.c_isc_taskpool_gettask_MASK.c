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
typedef  size_t isc_uint32_t ;
struct TYPE_3__ {size_t ntasks; int /*<<< orphan*/ * tasks; } ;
typedef  TYPE_1__ isc_taskpool_t ;
typedef  int /*<<< orphan*/  isc_task_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

void
FUNC2(isc_taskpool_t *pool, isc_task_t **targetp) {
	isc_uint32_t i;
	FUNC0(&i);
	FUNC1(pool->tasks[i % pool->ntasks], targetp);
}