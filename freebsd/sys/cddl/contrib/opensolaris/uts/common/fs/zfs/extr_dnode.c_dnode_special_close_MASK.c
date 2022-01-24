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
struct TYPE_7__ {TYPE_1__* dn_dbuf; int /*<<< orphan*/  dn_holds; } ;
typedef  TYPE_2__ dnode_t ;
struct TYPE_8__ {TYPE_2__* dnh_dnode; int /*<<< orphan*/  dnh_zrlock; } ;
typedef  TYPE_3__ dnode_handle_t ;
struct TYPE_6__ {int /*<<< orphan*/  db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(dnode_handle_t *dnh)
{
	dnode_t *dn = dnh->dnh_dnode;

	/*
	 * Wait for final references to the dnode to clear.  This can
	 * only happen if the arc is asynchronously evicting state that
	 * has a hold on this dnode while we are trying to evict this
	 * dnode.
	 */
	while (FUNC4(&dn->dn_holds) > 0)
		FUNC1(1);
	FUNC0(dn->dn_dbuf == NULL ||
	    FUNC2(&dn->dn_dbuf->db) == NULL);
	FUNC5(&dnh->dnh_zrlock);
	FUNC3(dn); /* implicit zrl_remove() */
	FUNC6(&dnh->dnh_zrlock);
	dnh->dnh_dnode = NULL;
}