#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_11__ {scalar_t__ db_level; scalar_t__ db_blkid; TYPE_1__* db_objset; TYPE_5__* db_data_pending; int /*<<< orphan*/  db_mtx; } ;
typedef  TYPE_4__ dmu_buf_impl_t ;
struct TYPE_9__ {scalar_t__ dr_override_state; int /*<<< orphan*/  dr_data; int /*<<< orphan*/  dr_nopwrite; int /*<<< orphan*/  dr_overridden_by; } ;
struct TYPE_10__ {TYPE_2__ dl; } ;
struct TYPE_12__ {TYPE_3__ dt; int /*<<< orphan*/  dr_txg; TYPE_4__* dr_dbuf; } ;
typedef  TYPE_5__ dbuf_dirty_record_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
struct TYPE_8__ {int /*<<< orphan*/  os_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ DMU_BONUS_BLKID ; 
 scalar_t__ DR_IN_DMU_SYNC ; 
 scalar_t__ DR_NOT_OVERRIDDEN ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(dbuf_dirty_record_t *dr)
{
	dmu_buf_impl_t *db = dr->dr_dbuf;
	blkptr_t *bp = &dr->dt.dl.dr_overridden_by;
	uint64_t txg = dr->dr_txg;

	FUNC0(FUNC2(&db->db_mtx));
	/*
	 * This assert is valid because dmu_sync() expects to be called by
	 * a zilog's get_data while holding a range lock.  This call only
	 * comes from dbuf_dirty() callers who must also hold a range lock.
	 */
	FUNC0(dr->dt.dl.dr_override_state != DR_IN_DMU_SYNC);
	FUNC0(db->db_level == 0);

	if (db->db_blkid == DMU_BONUS_BLKID ||
	    dr->dt.dl.dr_override_state == DR_NOT_OVERRIDDEN)
		return;

	FUNC0(db->db_data_pending != dr);

	/* free this block */
	if (!FUNC1(bp) && !dr->dt.dl.dr_nopwrite)
		FUNC4(db->db_objset->os_spa, txg, bp);

	dr->dt.dl.dr_override_state = DR_NOT_OVERRIDDEN;
	dr->dt.dl.dr_nopwrite = B_FALSE;

	/*
	 * Release the already-written buffer, so we leave it in
	 * a consistent dirty state.  Note that all callers are
	 * modifying the buffer, so they will immediately do
	 * another (redundant) arc_release().  Therefore, leave
	 * the buf thawed to save the effort of freezing &
	 * immediately re-thawing it.
	 */
	FUNC3(dr->dt.dl.dr_data, db);
}