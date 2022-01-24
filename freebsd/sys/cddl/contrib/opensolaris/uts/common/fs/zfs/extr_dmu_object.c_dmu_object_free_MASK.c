#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_6__ {scalar_t__ dn_type; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DMU_META_DNODE_OBJECT ; 
 int /*<<< orphan*/  DMU_OBJECT_END ; 
 scalar_t__ DMU_OT_NONE ; 
 int /*<<< orphan*/  DNODE_MUST_BE_ALLOCATED ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC6(objset_t *os, uint64_t object, dmu_tx_t *tx)
{
	dnode_t *dn;
	int err;

	FUNC0(object != DMU_META_DNODE_OBJECT || FUNC1(tx));

	err = FUNC4(os, object, DNODE_MUST_BE_ALLOCATED, 0,
	    FTAG, &dn);
	if (err)
		return (err);

	FUNC0(dn->dn_type != DMU_OT_NONE);
	/*
	 * If we don't create this free range, we'll leak indirect blocks when
	 * we get to freeing the dnode in syncing context.
	 */
	FUNC3(dn, 0, DMU_OBJECT_END, tx);
	FUNC2(dn, tx);
	FUNC5(dn, FTAG);

	return (0);
}