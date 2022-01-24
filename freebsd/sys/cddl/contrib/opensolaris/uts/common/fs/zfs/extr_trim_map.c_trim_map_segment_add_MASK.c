#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_15__ {scalar_t__ ts_start; scalar_t__ ts_end; void* ts_time; scalar_t__ ts_txg; } ;
typedef  TYPE_1__ trim_seg_t ;
struct TYPE_16__ {int /*<<< orphan*/  tm_queued_frees; int /*<<< orphan*/  tm_lock; } ;
typedef  TYPE_2__ trim_map_t ;
typedef  void* hrtime_t ;
typedef  int boolean_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVL_AFTER ; 
 int /*<<< orphan*/  AVL_BEFORE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC9 () ; 
 TYPE_1__* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC12(trim_map_t *tm, uint64_t start, uint64_t end, uint64_t txg)
{
	avl_index_t where;
	trim_seg_t tsearch, *ts_before, *ts_after, *ts;
	boolean_t merge_before, merge_after;
	hrtime_t time;

	FUNC0(FUNC1(&tm->tm_lock));
	FUNC4(start < end);

	time = FUNC9();
	tsearch.ts_start = start;
	tsearch.ts_end = end;

	ts = FUNC5(&tm->tm_queued_frees, &tsearch, &where);
	if (ts != NULL) {
		if (start < ts->ts_start)
			FUNC12(tm, start, ts->ts_start, txg);
		if (end > ts->ts_end)
			FUNC12(tm, ts->ts_end, end, txg);
		return;
	}

	ts_before = FUNC7(&tm->tm_queued_frees, where, AVL_BEFORE);
	ts_after = FUNC7(&tm->tm_queued_frees, where, AVL_AFTER);

	merge_before = (ts_before != NULL && ts_before->ts_end == start);
	merge_after = (ts_after != NULL && ts_after->ts_start == end);

	if (merge_before && merge_after) {
		FUNC8(&tm->tm_queued_frees, ts_before);
		FUNC3(tm, ts_before);
		FUNC3(tm, ts_after);
		ts_after->ts_start = ts_before->ts_start;
		ts_after->ts_txg = txg;
		ts_after->ts_time = time;
		FUNC2(tm, ts_after);
		FUNC11(ts_before, sizeof (*ts_before));
	} else if (merge_before) {
		FUNC3(tm, ts_before);
		ts_before->ts_end = end;
		ts_before->ts_txg = txg;
		ts_before->ts_time = time;
		FUNC2(tm, ts_before);
	} else if (merge_after) {
		FUNC3(tm, ts_after);
		ts_after->ts_start = start;
		ts_after->ts_txg = txg;
		ts_after->ts_time = time;
		FUNC2(tm, ts_after);
	} else {
		ts = FUNC10(sizeof (*ts), KM_SLEEP);
		ts->ts_start = start;
		ts->ts_end = end;
		ts->ts_txg = txg;
		ts->ts_time = time;
		FUNC6(&tm->tm_queued_frees, ts, where);
		FUNC2(tm, ts);
	}
}