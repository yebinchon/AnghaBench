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
typedef  scalar_t__ isc_statscounter_t ;
struct TYPE_5__ {scalar_t__ ncounters; } ;
typedef  TYPE_1__ isc_stats_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void
FUNC3(isc_stats_t *stats, isc_statscounter_t counter) {
	FUNC1(FUNC0(stats));
	FUNC1(counter < stats->ncounters);

	FUNC2(stats, (int)counter);
}