#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;
struct TYPE_5__ {scalar_t__ db_blkid; scalar_t__ db_dirtycnt; int /*<<< orphan*/  db_mtx; int /*<<< orphan*/  db_holds; } ;
typedef  TYPE_1__ dmu_buf_impl_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ DMU_BONUS_BLKID ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 

boolean_t
FUNC5(dmu_buf_t *db_fake, objset_t *os, uint64_t obj, uint64_t blkid,
    void *tag)
{
	dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;
	dmu_buf_impl_t *found_db;
	boolean_t result = B_FALSE;

	if (db->db_blkid == DMU_BONUS_BLKID)
		found_db = FUNC1(os, obj);
	else
		found_db = FUNC0(os, obj, 0, blkid);

	if (found_db != NULL) {
		if (db == found_db && FUNC2(db) > db->db_dirtycnt) {
			(void) FUNC4(&db->db_holds, tag);
			result = B_TRUE;
		}
		FUNC3(&db->db_mtx);
	}
	return (result);
}