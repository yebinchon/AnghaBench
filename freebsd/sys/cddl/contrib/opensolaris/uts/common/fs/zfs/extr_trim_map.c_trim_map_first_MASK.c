#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ ts_txg; scalar_t__ ts_time; } ;
typedef  TYPE_1__ trim_seg_t ;
struct TYPE_7__ {int /*<<< orphan*/  tm_head; int /*<<< orphan*/  tm_lock; } ;
typedef  TYPE_2__ trim_map_t ;
typedef  scalar_t__ hrtime_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static trim_seg_t *
FUNC4(trim_map_t *tm, uint64_t txg, uint64_t txgsafe, hrtime_t time,
    boolean_t force)
{
	trim_seg_t *ts;

	FUNC0(FUNC1(&tm->tm_lock));
	FUNC2(txgsafe >= txg);

	ts = FUNC3(&tm->tm_head);
	if (ts != NULL && ts->ts_txg <= txgsafe &&
	    (ts->ts_txg <= txg || ts->ts_time <= time || force))
		return (ts);
	return (NULL);
}