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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_7__ {int /*<<< orphan*/  dn_struct_rwlock; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;
struct TYPE_8__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ dmu_buf_impl_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  RW_READER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(dnode_t *dn, uint64_t offset,
    void *tag, dmu_buf_t **dbp)
{
	uint64_t blkid;
	dmu_buf_impl_t *db;

	blkid = FUNC2(dn, 0, offset);
	FUNC3(&dn->dn_struct_rwlock, RW_READER);
	db = FUNC1(dn, blkid, tag);
	FUNC4(&dn->dn_struct_rwlock);

	if (db == NULL) {
		*dbp = NULL;
		return (FUNC0(EIO));
	}

	*dbp = &db->db;
	return (0);
}