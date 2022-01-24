#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ dn_datablkshift; scalar_t__ dn_datablksz; int /*<<< orphan*/  dn_struct_rwlock; TYPE_1__* dn_phys; } ;
typedef  TYPE_2__ dnode_t ;
struct TYPE_5__ {int dn_nlevels; } ;

/* Variables and functions */
 int DNODE_FIND_BACKWARDS ; 
 int DNODE_FIND_HAVELOCK ; 
 int DNODE_FIND_HOLE ; 
 int ESRCH ; 
 int /*<<< orphan*/  RW_READER ; 
 int FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int,scalar_t__*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(dnode_t *dn, int flags, uint64_t *offset,
    int minlvl, uint64_t blkfill, uint64_t txg)
{
	uint64_t initial_offset = *offset;
	int lvl, maxlvl;
	int error = 0;

	if (!(flags & DNODE_FIND_HAVELOCK))
		FUNC2(&dn->dn_struct_rwlock, RW_READER);

	if (dn->dn_phys->dn_nlevels == 0) {
		error = FUNC0(ESRCH);
		goto out;
	}

	if (dn->dn_datablkshift == 0) {
		if (*offset < dn->dn_datablksz) {
			if (flags & DNODE_FIND_HOLE)
				*offset = dn->dn_datablksz;
		} else {
			error = FUNC0(ESRCH);
		}
		goto out;
	}

	maxlvl = dn->dn_phys->dn_nlevels;

	for (lvl = minlvl; lvl <= maxlvl; lvl++) {
		error = FUNC1(dn,
		    flags, offset, lvl, blkfill, txg);
		if (error != ESRCH)
			break;
	}

	while (error == 0 && --lvl >= minlvl) {
		error = FUNC1(dn,
		    flags, offset, lvl, blkfill, txg);
	}

	/*
	 * There's always a "virtual hole" at the end of the object, even
	 * if all BP's which physically exist are non-holes.
	 */
	if ((flags & DNODE_FIND_HOLE) && error == ESRCH && txg == 0 &&
	    minlvl == 1 && blkfill == 1 && !(flags & DNODE_FIND_BACKWARDS)) {
		error = 0;
	}

	if (error == 0 && (flags & DNODE_FIND_BACKWARDS ?
	    initial_offset < *offset : initial_offset > *offset))
		error = FUNC0(ESRCH);
out:
	if (!(flags & DNODE_FIND_HAVELOCK))
		FUNC3(&dn->dn_struct_rwlock);

	return (error);
}