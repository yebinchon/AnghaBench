#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  dn_struct_rwlock; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;
struct TYPE_9__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ dmu_buf_impl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DB_RF_HAVESTRUCT ; 
 int /*<<< orphan*/  DMU_SPILL_BLKID ; 
 int /*<<< orphan*/  RW_READER ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(dnode_t *dn, uint32_t flags, void *tag, dmu_buf_t **dbp)
{
	dmu_buf_impl_t *db = NULL;
	int err;

	if ((flags & DB_RF_HAVESTRUCT) == 0)
		FUNC4(&dn->dn_struct_rwlock, RW_READER);

	db = FUNC1(dn, DMU_SPILL_BLKID, tag);

	if ((flags & DB_RF_HAVESTRUCT) == 0)
		FUNC5(&dn->dn_struct_rwlock);

	FUNC0(db != NULL);
	err = FUNC2(db, NULL, flags);
	if (err == 0)
		*dbp = &db->db;
	else
		FUNC3(db, tag);
	return (err);
}