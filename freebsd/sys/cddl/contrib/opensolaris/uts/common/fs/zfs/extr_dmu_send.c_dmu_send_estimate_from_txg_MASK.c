#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct calculate_send_arg {int /*<<< orphan*/  compressed; int /*<<< orphan*/  uncompressed; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_9__ {int /*<<< orphan*/  ds_is_snapshot; TYPE_1__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_10__ {scalar_t__ ds_creation_txg; } ;
struct TYPE_8__ {int /*<<< orphan*/ * dd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EXDEV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRAVERSE_POST ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  dmu_calculate_send_traversal ; 
 TYPE_4__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct calculate_send_arg*) ; 

int
FUNC6(dsl_dataset_t *ds, uint64_t from_txg,
    boolean_t stream_compressed, uint64_t *sizep)
{
	dsl_pool_t *dp = ds->ds_dir->dd_pool;
	int err;
	struct calculate_send_arg size = { 0 };

	FUNC0(FUNC4(dp));

	/* tosnap must be a snapshot */
	if (!ds->ds_is_snapshot)
		return (FUNC1(EINVAL));

	/* verify that from_txg is before the provided snapshot was taken */
	if (from_txg >= FUNC3(ds)->ds_creation_txg) {
		return (FUNC1(EXDEV));
	}

	/*
	 * traverse the blocks of the snapshot with birth times after
	 * from_txg, summing their uncompressed size
	 */
	err = FUNC5(ds, from_txg, TRAVERSE_POST,
	    dmu_calculate_send_traversal, &size);
	if (err)
		return (err);

	err = FUNC2(ds, size.uncompressed,
	    size.compressed, stream_compressed, sizep);
	return (err);
}