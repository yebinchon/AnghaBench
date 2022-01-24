#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/  dn_struct_rwlock; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_buf_impl_t ;

/* Variables and functions */
 int DB_RF_CANFAIL ; 
 int DB_RF_NOPREFETCH ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(zio_t *zio, dnode_t *dn, int level, uint64_t blkid)
{
	int err;
	dmu_buf_impl_t *db;

	FUNC4(&dn->dn_struct_rwlock, RW_READER);
	db = FUNC1(dn, level, blkid, FTAG);
	FUNC5(&dn->dn_struct_rwlock);
	if (db == NULL)
		return (FUNC0(EIO));
	err = FUNC2(db, zio, DB_RF_CANFAIL | DB_RF_NOPREFETCH);
	FUNC3(db, FTAG);
	return (err);
}