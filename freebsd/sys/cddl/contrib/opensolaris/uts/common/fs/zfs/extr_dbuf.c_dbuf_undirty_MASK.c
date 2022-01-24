#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_9__ ;
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;
typedef  struct TYPE_26__   TYPE_13__ ;
typedef  struct TYPE_25__   TYPE_10__ ;

/* Type definitions */
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_33__ {scalar_t__ dn_objset; scalar_t__ dn_nlevels; scalar_t__ dn_dbuf; int /*<<< orphan*/  dn_mtx; int /*<<< orphan*/ * dn_dirty_records; } ;
typedef  TYPE_7__ dnode_t ;
struct TYPE_34__ {size_t tx_txg; } ;
typedef  TYPE_8__ dmu_tx_t ;
struct TYPE_27__ {scalar_t__ db_size; } ;
struct TYPE_35__ {scalar_t__ db_objset; scalar_t__ db_blkid; scalar_t__ db_level; scalar_t__ db_parent; scalar_t__ db_state; scalar_t__ db_dirtycnt; int /*<<< orphan*/ * db_buf; int /*<<< orphan*/  db_holds; int /*<<< orphan*/ * db_blkptr; TYPE_1__ db; TYPE_10__* db_last_dirty; int /*<<< orphan*/  db_mtx; } ;
typedef  TYPE_9__ dmu_buf_impl_t ;
struct TYPE_31__ {int /*<<< orphan*/ * dr_data; } ;
struct TYPE_32__ {TYPE_5__ dl; } ;
struct TYPE_25__ {size_t dr_txg; TYPE_6__ dt; TYPE_4__* dr_parent; struct TYPE_25__* dr_next; int /*<<< orphan*/  dr_accounted; TYPE_9__* dr_dbuf; } ;
typedef  TYPE_10__ dbuf_dirty_record_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_28__ {int /*<<< orphan*/  dr_mtx; int /*<<< orphan*/  dr_children; } ;
struct TYPE_29__ {TYPE_2__ di; } ;
struct TYPE_30__ {TYPE_3__ dt; } ;
struct TYPE_26__ {scalar_t__ dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 TYPE_7__* FUNC2 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*) ; 
 scalar_t__ DB_NOFILL ; 
 scalar_t__ DMU_BONUS_BLKID ; 
 scalar_t__ DMU_SPILL_BLKID ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 size_t TXG_MASK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_9__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_10__*) ; 
 TYPE_13__* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_13__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_10__*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 size_t FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static boolean_t
FUNC20(dmu_buf_impl_t *db, dmu_tx_t *tx)
{
	dnode_t *dn;
	uint64_t txg = tx->tx_txg;
	dbuf_dirty_record_t *dr, **drp;

	FUNC0(txg != 0);

	/*
	 * Due to our use of dn_nlevels below, this can only be called
	 * in open context, unless we are operating on the MOS.
	 * From syncing context, dn_nlevels may be different from the
	 * dn_nlevels used when dbuf was dirtied.
	 */
	FUNC0(db->db_objset ==
	    FUNC10(db->db_objset)->dp_meta_objset ||
	    txg != FUNC18(FUNC11(db->db_objset)));
	FUNC0(db->db_blkid != DMU_BONUS_BLKID);
	FUNC1(db->db_level);
	FUNC0(FUNC5(&db->db_mtx));

	/*
	 * If this buffer is not dirty, we're done.
	 */
	for (drp = &db->db_last_dirty; (dr = *drp) != NULL; drp = &dr->dr_next)
		if (dr->dr_txg <= txg)
			break;
	if (dr == NULL || dr->dr_txg < txg)
		return (B_FALSE);
	FUNC0(dr->dr_txg == txg);
	FUNC0(dr->dr_dbuf == db);

	FUNC3(db);
	dn = FUNC2(db);

	FUNC12(db, "size=%llx\n", (u_longlong_t)db->db.db_size);

	FUNC0(db->db.db_size != 0);

	FUNC13(FUNC10(dn->dn_objset),
	    dr->dr_accounted, txg);

	*drp = dr->dr_next;

	/*
	 * Note that there are three places in dbuf_dirty()
	 * where this dirty record may be put on a list.
	 * Make sure to do a list_remove corresponding to
	 * every one of those list_insert calls.
	 */
	if (dr->dr_parent) {
		FUNC16(&dr->dr_parent->dt.di.dr_mtx);
		FUNC15(&dr->dr_parent->dt.di.dr_children, dr);
		FUNC17(&dr->dr_parent->dt.di.dr_mtx);
	} else if (db->db_blkid == DMU_SPILL_BLKID ||
	    db->db_level + 1 == dn->dn_nlevels) {
		FUNC0(db->db_blkptr == NULL || db->db_parent == dn->dn_dbuf);
		FUNC16(&dn->dn_mtx);
		FUNC15(&dn->dn_dirty_records[txg & TXG_MASK], dr);
		FUNC17(&dn->dn_mtx);
	}
	FUNC4(db);

	if (db->db_state != DB_NOFILL) {
		FUNC9(dr);

		FUNC0(db->db_buf != NULL);
		FUNC0(dr->dt.dl.dr_data != NULL);
		if (dr->dt.dl.dr_data != db->db_buf)
			FUNC6(dr->dt.dl.dr_data, db);
	}

	FUNC14(dr, sizeof (dbuf_dirty_record_t));

	FUNC0(db->db_dirtycnt > 0);
	db->db_dirtycnt -= 1;

	if (FUNC19(&db->db_holds, (void *)(uintptr_t)txg) == 0) {
		FUNC0(db->db_state == DB_NOFILL || FUNC7(db->db_buf));
		FUNC8(db);
		return (B_TRUE);
	}

	return (B_FALSE);
}