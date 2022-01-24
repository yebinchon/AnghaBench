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
struct TYPE_3__ {unsigned int ntasks; int /*<<< orphan*/ ** tasks; } ;
typedef  TYPE_1__ isc_taskpool_t ;
typedef  int /*<<< orphan*/  isc_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(isc_taskpool_t *pool, isc_boolean_t priv) {
	unsigned int i;

	FUNC0(pool != NULL);

	for (i = 0; i < pool->ntasks; i++) {
		if (pool->tasks[i] != NULL)
			FUNC1(pool->tasks[i], priv);
	}
}