#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  references; } ;
typedef  TYPE_1__ isc_stats_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(isc_stats_t *stats, isc_stats_t **statsp) {
	FUNC2(FUNC0(stats));
	FUNC2(statsp != NULL && *statsp == NULL);

	FUNC1(&stats->lock);
	stats->references++;
	FUNC3(&stats->lock);

	*statsp = stats;
}