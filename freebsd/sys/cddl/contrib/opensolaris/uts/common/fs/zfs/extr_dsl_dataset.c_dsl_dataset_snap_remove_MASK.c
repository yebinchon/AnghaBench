#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int matchtype_t ;
struct TYPE_9__ {TYPE_3__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_11__ {int ds_flags; int /*<<< orphan*/  ds_snapnames_zapobj; } ;
struct TYPE_10__ {TYPE_1__* dd_pool; } ;
struct TYPE_8__ {int /*<<< orphan*/ * dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  DD_FIELD_SNAPSHOT_COUNT ; 
 int DS_FLAG_CI_DATASET ; 
 int ENOTSUP ; 
 int MT_NORMALIZE ; 
 TYPE_6__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 

int
FUNC5(dsl_dataset_t *ds, const char *name, dmu_tx_t *tx,
    boolean_t adj_cnt)
{
	objset_t *mos = ds->ds_dir->dd_pool->dp_meta_objset;
	uint64_t snapobj = FUNC0(ds)->ds_snapnames_zapobj;
	matchtype_t mt = 0;
	int err;

	FUNC1(ds->ds_dir);

	if (FUNC0(ds)->ds_flags & DS_FLAG_CI_DATASET)
		mt = MT_NORMALIZE;

	err = FUNC4(mos, snapobj, name, mt, tx);
	if (err == ENOTSUP && (mt & MT_NORMALIZE))
		err = FUNC3(mos, snapobj, name, tx);

	if (err == 0 && adj_cnt)
		FUNC2(ds->ds_dir, -1,
		    DD_FIELD_SNAPSHOT_COUNT, tx);

	return (err);
}