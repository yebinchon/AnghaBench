#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_13__ {int /*<<< orphan*/  ds_is_snapshot; TYPE_1__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_replay_record_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_14__ {int ds_uncompressed_bytes; int ds_compressed_bytes; } ;
struct TYPE_12__ {int /*<<< orphan*/ * dd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EXDEV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,TYPE_2__*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(dsl_dataset_t *ds, dsl_dataset_t *fromds,
    boolean_t stream_compressed, uint64_t *sizep)
{
	dsl_pool_t *dp = ds->ds_dir->dd_pool;
	int err;
	uint64_t uncomp, comp;

	FUNC0(FUNC6(dp));

	/* tosnap must be a snapshot */
	if (!ds->ds_is_snapshot)
		return (FUNC1(EINVAL));

	/* fromsnap, if provided, must be a snapshot */
	if (fromds != NULL && !fromds->ds_is_snapshot)
		return (FUNC1(EINVAL));

	/*
	 * fromsnap must be an earlier snapshot from the same fs as tosnap,
	 * or the origin's fs.
	 */
	if (fromds != NULL && !FUNC3(ds, fromds, 0))
		return (FUNC1(EXDEV));

	/* Get compressed and uncompressed size estimates of changed data. */
	if (fromds == NULL) {
		uncomp = FUNC4(ds)->ds_uncompressed_bytes;
		comp = FUNC4(ds)->ds_compressed_bytes;
	} else {
		uint64_t used;
		err = FUNC5(fromds, ds,
		    &used, &comp, &uncomp);
		if (err != 0)
			return (err);
	}

	err = FUNC2(ds, uncomp, comp,
	    stream_compressed, sizep);
	/*
	 * Add the size of the BEGIN and END records to the estimate.
	 */
	*sizep += 2 * sizeof (dmu_replay_record_t);
	return (err);
}