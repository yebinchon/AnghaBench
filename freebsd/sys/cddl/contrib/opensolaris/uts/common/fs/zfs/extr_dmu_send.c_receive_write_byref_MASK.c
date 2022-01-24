#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct receive_writer_arg {int /*<<< orphan*/ * os; int /*<<< orphan*/  max_object; int /*<<< orphan*/  guid_to_ds_map; } ;
struct drr_write_byref {scalar_t__ drr_toguid; scalar_t__ drr_refguid; scalar_t__ drr_offset; int /*<<< orphan*/  drr_object; scalar_t__ drr_length; int /*<<< orphan*/  drr_refoffset; int /*<<< orphan*/  drr_refobject; } ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_7__ {scalar_t__ guid; int /*<<< orphan*/  gme_ds; } ;
typedef  TYPE_1__ guid_map_entry_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_8__ {int /*<<< orphan*/  db_data; } ;
typedef  TYPE_2__ dmu_buf_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_READ_PREFETCH ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct receive_writer_arg*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(struct receive_writer_arg *rwa,
    struct drr_write_byref *drrwbr)
{
	dmu_tx_t *tx;
	int err;
	guid_map_entry_t gmesrch;
	guid_map_entry_t *gmep;
	avl_index_t where;
	objset_t *ref_os = NULL;
	dmu_buf_t *dbp;

	if (drrwbr->drr_offset + drrwbr->drr_length < drrwbr->drr_offset)
		return (FUNC0(EINVAL));

	/*
	 * If the GUID of the referenced dataset is different from the
	 * GUID of the target dataset, find the referenced dataset.
	 */
	if (drrwbr->drr_toguid != drrwbr->drr_refguid) {
		gmesrch.guid = drrwbr->drr_refguid;
		if ((gmep = FUNC1(rwa->guid_to_ds_map, &gmesrch,
		    &where)) == NULL) {
			return (FUNC0(EINVAL));
		}
		if (FUNC4(gmep->gme_ds, &ref_os))
			return (FUNC0(EINVAL));
	} else {
		ref_os = rwa->os;
	}

	if (drrwbr->drr_object > rwa->max_object)
		rwa->max_object = drrwbr->drr_object;

	err = FUNC2(ref_os, drrwbr->drr_refobject,
	    drrwbr->drr_refoffset, FTAG, &dbp, DMU_READ_PREFETCH);
	if (err != 0)
		return (err);

	tx = FUNC8(rwa->os);

	FUNC9(tx, drrwbr->drr_object,
	    drrwbr->drr_offset, drrwbr->drr_length);
	err = FUNC6(tx, TXG_WAIT);
	if (err != 0) {
		FUNC5(tx);
		return (err);
	}
	FUNC10(rwa->os, drrwbr->drr_object,
	    drrwbr->drr_offset, drrwbr->drr_length, dbp->db_data, tx);
	FUNC3(dbp, FTAG);

	/* See comment in restore_write. */
	FUNC11(rwa, drrwbr->drr_object, drrwbr->drr_offset, tx);
	FUNC7(tx);
	return (0);
}