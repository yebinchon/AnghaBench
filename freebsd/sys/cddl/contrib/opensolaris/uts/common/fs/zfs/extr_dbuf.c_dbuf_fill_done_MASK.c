#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_5__ {int /*<<< orphan*/  db_size; int /*<<< orphan*/  db_data; } ;
struct TYPE_6__ {scalar_t__ db_state; scalar_t__ db_level; scalar_t__ db_blkid; int /*<<< orphan*/  db_mtx; int /*<<< orphan*/  db_changed; scalar_t__ db_freed_in_flight; TYPE_1__ db; } ;
typedef  TYPE_2__ dmu_buf_impl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ DB_CACHED ; 
 scalar_t__ DB_FILL ; 
 scalar_t__ DMU_BONUS_BLKID ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(dmu_buf_impl_t *db, dmu_tx_t *tx)
{
	FUNC4(&db->db_mtx);
	FUNC1(db);

	if (db->db_state == DB_FILL) {
		if (db->db_level == 0 && db->db_freed_in_flight) {
			FUNC0(db->db_blkid != DMU_BONUS_BLKID);
			/* we were freed while filling */
			/* XXX dbuf_undirty? */
			FUNC2(db->db.db_data, db->db.db_size);
			db->db_freed_in_flight = FALSE;
		}
		db->db_state = DB_CACHED;
		FUNC3(&db->db_changed);
	}
	FUNC5(&db->db_mtx);
}