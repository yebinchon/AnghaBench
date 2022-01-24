#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_8__ {int /*<<< orphan*/  dn_struct_rwlock; int /*<<< orphan*/  dn_objset; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_9__ {int /*<<< orphan*/ * drica_tx; int /*<<< orphan*/  drica_blk_birth; int /*<<< orphan*/  drica_os; } ;
typedef  TYPE_2__ dbuf_remap_impl_callback_arg_t ;
struct TYPE_10__ {int /*<<< orphan*/  blk_birth; } ;
typedef  TYPE_3__ blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  dbuf_remap_impl_callback ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(dnode_t *dn, blkptr_t *bp, dmu_tx_t *tx)
{
	blkptr_t bp_copy = *bp;
	spa_t *spa = FUNC1(dn->dn_objset);
	dbuf_remap_impl_callback_arg_t drica;

	FUNC0(FUNC2(FUNC5(spa)));

	drica.drica_os = dn->dn_objset;
	drica.drica_blk_birth = bp->blk_birth;
	drica.drica_tx = tx;
	if (FUNC6(spa, &bp_copy, dbuf_remap_impl_callback,
	    &drica)) {
		/*
		 * The struct_rwlock prevents dbuf_read_impl() from
		 * dereferencing the BP while we are changing it.  To
		 * avoid lock contention, only grab it when we are actually
		 * changing the BP.
		 */
		FUNC3(&dn->dn_struct_rwlock, RW_WRITER);
		*bp = bp_copy;
		FUNC4(&dn->dn_struct_rwlock);
	}
}