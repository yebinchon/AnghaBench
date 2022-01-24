#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_5__ {int /*<<< orphan*/  dd_lock; int /*<<< orphan*/ * dd_parent; int /*<<< orphan*/  dd_dbuf; } ;
typedef  TYPE_1__ dsl_dir_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_6__ {int /*<<< orphan*/  dd_reserved; int /*<<< orphan*/  dd_used_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  DD_USED_CHILD_RSRV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(dsl_dir_t *dd, uint64_t value, dmu_tx_t *tx)
{
	uint64_t used;
	int64_t delta;

	FUNC1(dd->dd_dbuf, tx);

	FUNC4(&dd->dd_lock);
	used = FUNC3(dd)->dd_used_bytes;
	delta = FUNC0(used, value) - FUNC0(used, FUNC3(dd)->dd_reserved);
	FUNC3(dd)->dd_reserved = value;

	if (dd->dd_parent != NULL) {
		/* Roll up this additional usage into our ancestors */
		FUNC2(dd->dd_parent, DD_USED_CHILD_RSRV,
		    delta, 0, 0, tx);
	}
	FUNC5(&dd->dd_lock);
}