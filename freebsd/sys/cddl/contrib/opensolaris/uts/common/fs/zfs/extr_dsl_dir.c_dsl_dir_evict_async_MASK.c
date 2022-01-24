#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  dp_spa; int /*<<< orphan*/  dp_dirty_dirs; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_9__ {scalar_t__* dd_tempreserved; scalar_t__* dd_space_towrite; int /*<<< orphan*/  dd_lock; TYPE_1__* dd_pool; scalar_t__ dd_parent; int /*<<< orphan*/ * dd_dbuf; } ;
typedef  TYPE_2__ dsl_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TXG_SIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC7(void *dbu)
{
	dsl_dir_t *dd = dbu;
	dsl_pool_t *dp = dd->dd_pool;
	int t;

	dd->dd_dbuf = NULL;

	for (t = 0; t < TXG_SIZE; t++) {
		FUNC0(!FUNC6(&dp->dp_dirty_dirs, dd, t));
		FUNC0(dd->dd_tempreserved[t] == 0);
		FUNC0(dd->dd_space_towrite[t] == 0);
	}

	if (dd->dd_parent)
		FUNC1(dd->dd_parent, dd);

	FUNC5(dd->dd_pool->dp_spa, dd);

	FUNC2(dd);
	FUNC4(&dd->dd_lock);
	FUNC3(dd, sizeof (dsl_dir_t));
}