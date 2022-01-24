#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct killarg {int /*<<< orphan*/ * tx; int /*<<< orphan*/ * ds; } ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_2__ {scalar_t__ ds_unique_bytes; int /*<<< orphan*/  ds_prev_snap_txg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRAVERSE_POST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kill_blkptr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct killarg*) ; 

__attribute__((used)) static void
FUNC5(dsl_dataset_t *ds, dmu_tx_t *tx)
{
	struct killarg ka;

	/*
	 * Free everything that we point to (that's born after
	 * the previous snapshot, if we are a clone)
	 *
	 * NB: this should be very quick, because we already
	 * freed all the objects in open context.
	 */
	ka.ds = ds;
	ka.tx = tx;
	FUNC2(FUNC4(ds,
	    FUNC3(ds)->ds_prev_snap_txg, TRAVERSE_POST,
	    kill_blkptr, &ka));
	FUNC0(!FUNC1(ds) ||
	    FUNC3(ds)->ds_unique_bytes == 0);
}