#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  dn_tx_holds; int /*<<< orphan*/  dn_holds; } ;
typedef  TYPE_1__ dnode_t ;
struct TYPE_8__ {TYPE_1__* dnh_dnode; int /*<<< orphan*/  dnh_zrlock; } ;
typedef  TYPE_2__ dnode_handle_t ;
struct TYPE_9__ {int dnc_count; TYPE_2__* dnc_children; } ;
typedef  TYPE_3__ dnode_children_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 void* DN_SLOT_UNINIT ; 
 int /*<<< orphan*/  dnode_buf_evict ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void *dbu)
{
	dnode_children_t *dnc = dbu;

	FUNC1(dnode_buf_evict);

	for (int i = 0; i < dnc->dnc_count; i++) {
		dnode_handle_t *dnh = &dnc->dnc_children[i];
		dnode_t *dn;

		/*
		 * The dnode handle lock guards against the dnode moving to
		 * another valid address, so there is no need here to guard
		 * against changes to or from NULL.
		 */
		if (!FUNC2(dnh->dnh_dnode)) {
			FUNC7(&dnh->dnh_zrlock);
			dnh->dnh_dnode = DN_SLOT_UNINIT;
			continue;
		}

		FUNC6(&dnh->dnh_zrlock);
		dn = dnh->dnh_dnode;
		/*
		 * If there are holds on this dnode, then there should
		 * be holds on the dnode's containing dbuf as well; thus
		 * it wouldn't be eligible for eviction and this function
		 * would not have been called.
		 */
		FUNC0(FUNC5(&dn->dn_holds));
		FUNC0(FUNC5(&dn->dn_tx_holds));

		FUNC3(dn); /* implicit zrl_remove() for first slot */
		FUNC7(&dnh->dnh_zrlock);
		dnh->dnh_dnode = DN_SLOT_UNINIT;
	}
	FUNC4(dnc, sizeof (dnode_children_t) +
	    dnc->dnc_count * sizeof (dnode_handle_t));
}