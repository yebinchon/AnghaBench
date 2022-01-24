#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_12__ {int td_flags; int (* td_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__ const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  td_arg; int /*<<< orphan*/  td_spa; TYPE_1__* td_resume; } ;
typedef  TYPE_2__ traverse_data_t ;
struct TYPE_13__ {int dn_nblkptr; int dn_flags; int /*<<< orphan*/ * dn_blkptr; scalar_t__ dn_nlevels; } ;
typedef  TYPE_3__ dnode_phys_t ;
struct TYPE_11__ {int /*<<< orphan*/  zb_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_META_DNODE_OBJECT ; 
 int DMU_SPILL_BLKID ; 
 int DNODE_FLAG_SPILL_BLKPTR ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int TRAVERSE_POST ; 
 int TRAVERSE_PRE ; 
 int TRAVERSE_VISIT_NO_CHILDREN ; 
 int ZB_DNODE_BLKID ; 
 scalar_t__ ZB_DNODE_LEVEL ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__ const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__ const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(traverse_data_t *td, const dnode_phys_t *dnp,
    uint64_t objset, uint64_t object)
{
	int j, err = 0;
	zbookmark_phys_t czb;

	if (object != DMU_META_DNODE_OBJECT && td->td_resume != NULL &&
	    object < td->td_resume->zb_object)
		return (0);

	if (td->td_flags & TRAVERSE_PRE) {
		FUNC1(&czb, objset, object, ZB_DNODE_LEVEL,
		    ZB_DNODE_BLKID);
		err = td->td_func(td->td_spa, NULL, NULL, &czb, dnp,
		    td->td_arg);
		if (err == TRAVERSE_VISIT_NO_CHILDREN)
			return (0);
		if (err != 0)
			return (err);
	}

	for (j = 0; j < dnp->dn_nblkptr; j++) {
		FUNC1(&czb, objset, object, dnp->dn_nlevels - 1, j);
		err = FUNC4(td, dnp, &dnp->dn_blkptr[j], &czb);
		if (err != 0)
			break;
	}

	if (err == 0 && (dnp->dn_flags & DNODE_FLAG_SPILL_BLKPTR)) {
		FUNC1(&czb, objset, object, 0, DMU_SPILL_BLKID);
		err = FUNC4(td, dnp, FUNC0(dnp), &czb);
	}

	if (err == 0 && (td->td_flags & TRAVERSE_POST)) {
		FUNC1(&czb, objset, object, ZB_DNODE_LEVEL,
		    ZB_DNODE_BLKID);
		err = td->td_func(td->td_spa, NULL, NULL, &czb, dnp,
		    td->td_arg);
		if (err == TRAVERSE_VISIT_NO_CHILDREN)
			return (0);
		if (err != 0)
			return (err);
	}
	return (err);
}