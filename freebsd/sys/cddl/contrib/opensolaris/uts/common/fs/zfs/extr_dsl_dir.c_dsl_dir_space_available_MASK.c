#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_7__ {int /*<<< orphan*/  dd_lock; int /*<<< orphan*/  dd_pool; struct TYPE_7__* dd_parent; } ;
typedef  TYPE_1__ dsl_dir_t ;
struct TYPE_8__ {scalar_t__ dd_quota; scalar_t__ dd_used_bytes; scalar_t__ dd_reserved; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NORMAL ; 
 TYPE_5__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

uint64_t
FUNC7(dsl_dir_t *dd,
    dsl_dir_t *ancestor, int64_t delta, int ondiskonly)
{
	uint64_t parentspace, myspace, quota, used;

	/*
	 * If there are no restrictions otherwise, assume we have
	 * unlimited space available.
	 */
	quota = UINT64_MAX;
	parentspace = UINT64_MAX;

	if (dd->dd_parent != NULL) {
		parentspace = FUNC7(dd->dd_parent,
		    ancestor, delta, ondiskonly);
	}

	FUNC5(&dd->dd_lock);
	if (FUNC2(dd)->dd_quota != 0)
		quota = FUNC2(dd)->dd_quota;
	used = FUNC2(dd)->dd_used_bytes;
	if (!ondiskonly)
		used += FUNC3(dd);

	if (dd->dd_parent == NULL) {
		uint64_t poolsize = FUNC4(dd->dd_pool,
		    ZFS_SPACE_CHECK_NORMAL);
		quota = FUNC1(quota, poolsize);
	}

	if (FUNC2(dd)->dd_reserved > used && parentspace != UINT64_MAX) {
		/*
		 * We have some space reserved, in addition to what our
		 * parent gave us.
		 */
		parentspace += FUNC2(dd)->dd_reserved - used;
	}

	if (dd == ancestor) {
		FUNC0(delta <= 0);
		FUNC0(used >= -delta);
		used += delta;
		if (parentspace != UINT64_MAX)
			parentspace -= delta;
	}

	if (used > quota) {
		/* over quota */
		myspace = 0;
	} else {
		/*
		 * the lesser of the space provided by our parent and
		 * the space left in our quota
		 */
		myspace = FUNC1(parentspace, quota - used);
	}

	FUNC6(&dd->dd_lock);

	return (myspace);
}