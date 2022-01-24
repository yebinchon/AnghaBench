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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dnode_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_4__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ dmu_buf_impl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(dnode_t *dn, uint64_t l1blkid, dmu_tx_t *tx)
{
	dmu_buf_impl_t *db = FUNC0(dn, 1, l1blkid, FTAG);
	if (db != NULL) {
		FUNC2(&db->db, tx);
		FUNC1(db, FTAG);
	}
}