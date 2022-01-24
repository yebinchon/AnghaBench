#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
typedef  size_t spa_feature_t ;
struct TYPE_14__ {scalar_t__* ds_resume_bytes; scalar_t__* ds_resume_object; scalar_t__* ds_resume_offset; scalar_t__* ds_feature_inuse; int /*<<< orphan*/  ds_object; scalar_t__* ds_feature_activation_needed; int /*<<< orphan*/ * ds_objset; int /*<<< orphan*/  ds_fsid_guid; int /*<<< orphan*/  ds_dbuf; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_15__ {size_t tx_txg; TYPE_1__* tx_pool; } ;
typedef  TYPE_3__ dmu_tx_t ;
struct TYPE_16__ {scalar_t__ ds_next_snap_obj; int /*<<< orphan*/  ds_fsid_guid; } ;
struct TYPE_13__ {int /*<<< orphan*/  dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  DS_FIELD_RESUME_BYTES ; 
 int /*<<< orphan*/  DS_FIELD_RESUME_OBJECT ; 
 int /*<<< orphan*/  DS_FIELD_RESUME_OFFSET ; 
 size_t SPA_FEATURES ; 
 size_t TXG_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t,TYPE_3__*) ; 
 TYPE_7__* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*,TYPE_3__*) ; 

void
FUNC8(dsl_dataset_t *ds, zio_t *zio, dmu_tx_t *tx)
{
	FUNC0(FUNC4(tx));
	FUNC0(ds->ds_objset != NULL);
	FUNC0(FUNC6(ds)->ds_next_snap_obj == 0);

	/*
	 * in case we had to change ds_fsid_guid when we opened it,
	 * sync it out now.
	 */
	FUNC2(ds->ds_dbuf, tx);
	FUNC6(ds)->ds_fsid_guid = ds->ds_fsid_guid;

	if (ds->ds_resume_bytes[tx->tx_txg & TXG_MASK] != 0) {
		FUNC1(FUNC7(tx->tx_pool->dp_meta_objset,
		    ds->ds_object, DS_FIELD_RESUME_OBJECT, 8, 1,
		    &ds->ds_resume_object[tx->tx_txg & TXG_MASK], tx));
		FUNC1(FUNC7(tx->tx_pool->dp_meta_objset,
		    ds->ds_object, DS_FIELD_RESUME_OFFSET, 8, 1,
		    &ds->ds_resume_offset[tx->tx_txg & TXG_MASK], tx));
		FUNC1(FUNC7(tx->tx_pool->dp_meta_objset,
		    ds->ds_object, DS_FIELD_RESUME_BYTES, 8, 1,
		    &ds->ds_resume_bytes[tx->tx_txg & TXG_MASK], tx));
		ds->ds_resume_object[tx->tx_txg & TXG_MASK] = 0;
		ds->ds_resume_offset[tx->tx_txg & TXG_MASK] = 0;
		ds->ds_resume_bytes[tx->tx_txg & TXG_MASK] = 0;
	}

	FUNC3(ds->ds_objset, zio, tx);

	for (spa_feature_t f = 0; f < SPA_FEATURES; f++) {
		if (ds->ds_feature_activation_needed[f]) {
			if (ds->ds_feature_inuse[f])
				continue;
			FUNC5(ds->ds_object, f, tx);
			ds->ds_feature_inuse[f] = B_TRUE;
		}
	}
}