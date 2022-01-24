#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_14__ {scalar_t__ ts_start; scalar_t__ ts_end; int /*<<< orphan*/  ts_time; int /*<<< orphan*/  ts_txg; } ;
typedef  TYPE_1__ trim_seg_t ;
struct TYPE_15__ {int /*<<< orphan*/  tm_queued_frees; int /*<<< orphan*/  tm_lock; } ;
typedef  TYPE_2__ trim_map_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVL_AFTER ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC8(trim_map_t *tm, trim_seg_t *ts, uint64_t start,
    uint64_t end)
{
	trim_seg_t *nts;
	boolean_t left_over, right_over;

	FUNC0(FUNC1(&tm->tm_lock));

	left_over = (ts->ts_start < start);
	right_over = (ts->ts_end > end);

	FUNC3(tm, ts);
	if (left_over && right_over) {
		nts = FUNC6(sizeof (*nts), KM_SLEEP);
		nts->ts_start = end;
		nts->ts_end = ts->ts_end;
		nts->ts_txg = ts->ts_txg;
		nts->ts_time = ts->ts_time;
		ts->ts_end = start;
		FUNC4(&tm->tm_queued_frees, nts, ts, AVL_AFTER);
		FUNC2(tm, ts);
		FUNC2(tm, nts);
	} else if (left_over) {
		ts->ts_end = start;
		FUNC2(tm, ts);
	} else if (right_over) {
		ts->ts_start = end;
		FUNC2(tm, ts);
	} else {
		FUNC5(&tm->tm_queued_frees, ts);
		FUNC7(ts, sizeof (*ts));
	}
}