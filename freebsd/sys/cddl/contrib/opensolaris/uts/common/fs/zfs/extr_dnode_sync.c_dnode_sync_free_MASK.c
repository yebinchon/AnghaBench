#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ dn_type; scalar_t__ dn_free_txg; scalar_t__ dn_allocated_txg; int dn_num_slots; scalar_t__ dn_object; int /*<<< orphan*/  dn_mtx; int /*<<< orphan*/  dn_have_spill; scalar_t__ dn_maxblkid; TYPE_11__* dn_phys; TYPE_1__* dn_dbuf; scalar_t__* dn_next_blksz; scalar_t__* dn_next_indblkshift; scalar_t__* dn_next_nlevels; int /*<<< orphan*/ * dn_dirty_records; } ;
typedef  TYPE_2__ dnode_t ;
typedef  int /*<<< orphan*/  dnode_phys_t ;
struct TYPE_16__ {int tx_txg; } ;
typedef  TYPE_3__ dmu_tx_t ;
struct TYPE_14__ {int /*<<< orphan*/  db; } ;
struct TYPE_13__ {scalar_t__ dn_type; int /*<<< orphan*/  dn_blkptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ DMU_META_DNODE_OBJECT ; 
 scalar_t__ DMU_OT_NONE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_11__*) ; 
 int TXG_MASK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(dnode_t *dn, dmu_tx_t *tx)
{
	int txgoff = tx->tx_txg & TXG_MASK;

	FUNC0(FUNC6(tx));

	/*
	 * Our contents should have been freed in dnode_sync() by the
	 * free range record inserted by the caller of dnode_free().
	 */
	FUNC1(FUNC3(dn->dn_phys));
	FUNC0(FUNC2(dn->dn_phys->dn_blkptr));

	FUNC10(&dn->dn_dirty_records[txgoff]);
	FUNC7(dn);

	/*
	 * XXX - It would be nice to assert this, but we may still
	 * have residual holds from async evictions from the arc...
	 *
	 * zfs_obj_to_path() also depends on this being
	 * commented out.
	 *
	 * ASSERT3U(zfs_refcount_count(&dn->dn_holds), ==, 1);
	 */

	/* Undirty next bits */
	dn->dn_next_nlevels[txgoff] = 0;
	dn->dn_next_indblkshift[txgoff] = 0;
	dn->dn_next_blksz[txgoff] = 0;

	/* ASSERT(blkptrs are zero); */
	FUNC0(dn->dn_phys->dn_type != DMU_OT_NONE);
	FUNC0(dn->dn_type != DMU_OT_NONE);

	FUNC0(dn->dn_free_txg > 0);
	if (dn->dn_allocated_txg != dn->dn_free_txg)
		FUNC5(&dn->dn_dbuf->db, tx);
	FUNC4(dn->dn_phys, sizeof (dnode_phys_t) * dn->dn_num_slots);
	FUNC8(dn);

	FUNC11(&dn->dn_mtx);
	dn->dn_type = DMU_OT_NONE;
	dn->dn_maxblkid = 0;
	dn->dn_allocated_txg = 0;
	dn->dn_free_txg = 0;
	dn->dn_have_spill = B_FALSE;
	dn->dn_num_slots = 1;
	FUNC12(&dn->dn_mtx);

	FUNC0(dn->dn_object != DMU_META_DNODE_OBJECT);

	FUNC9(dn, (void *)(uintptr_t)tx->tx_txg);
	/*
	 * Now that we've released our hold, the dnode may
	 * be evicted, so we musn't access it.
	 */
}