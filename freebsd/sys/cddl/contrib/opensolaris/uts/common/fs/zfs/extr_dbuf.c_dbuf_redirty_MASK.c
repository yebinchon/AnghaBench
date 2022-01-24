#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ db_object; } ;
struct TYPE_7__ {scalar_t__ db_level; scalar_t__ db_blkid; scalar_t__ db_state; int /*<<< orphan*/  db_buf; TYPE_1__ db; int /*<<< orphan*/  db_mtx; } ;
typedef  TYPE_2__ dmu_buf_impl_t ;
struct TYPE_8__ {TYPE_2__* dr_dbuf; } ;
typedef  TYPE_3__ dbuf_dirty_record_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DB_NOFILL ; 
 scalar_t__ DMU_BONUS_BLKID ; 
 scalar_t__ DMU_META_DNODE_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC5(dbuf_dirty_record_t *dr)
{
	dmu_buf_impl_t *db = dr->dr_dbuf;

	FUNC0(FUNC1(&db->db_mtx));

	if (db->db_level == 0 && db->db_blkid != DMU_BONUS_BLKID) {
		/*
		 * If this buffer has already been written out,
		 * we now need to reset its state.
		 */
		FUNC4(dr);
		if (db->db.db_object != DMU_META_DNODE_OBJECT &&
		    db->db_state != DB_NOFILL) {
			/* Already released on initial dirty, so just thaw. */
			FUNC0(FUNC3(db->db_buf));
			FUNC2(db->db_buf);
		}
	}
}