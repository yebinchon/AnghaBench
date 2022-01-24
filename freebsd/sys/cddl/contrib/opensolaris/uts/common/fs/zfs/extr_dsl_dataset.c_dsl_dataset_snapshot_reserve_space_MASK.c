#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ ds_reserved; int /*<<< orphan*/  ds_dir; } ;
typedef  TYPE_1__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_7__ {int /*<<< orphan*/  ds_unique_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ENOSPC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(dsl_dataset_t *ds, dmu_tx_t *tx)
{
	uint64_t asize;

	if (!FUNC4(tx))
		return (0);

	/*
	 * If there's an fs-only reservation, any blocks that might become
	 * owned by the snapshot dataset must be accommodated by space
	 * outside of the reservation.
	 */
	FUNC0(ds->ds_reserved == 0 || FUNC1(ds));
	asize = FUNC2(FUNC5(ds)->ds_unique_bytes, ds->ds_reserved);
	if (asize > FUNC6(ds->ds_dir, NULL, 0, TRUE))
		return (FUNC3(ENOSPC));

	/*
	 * Propagate any reserved space for this snapshot to other
	 * snapshot checks in this sync group.
	 */
	if (asize > 0)
		FUNC7(ds->ds_dir, asize, tx);

	return (0);
}