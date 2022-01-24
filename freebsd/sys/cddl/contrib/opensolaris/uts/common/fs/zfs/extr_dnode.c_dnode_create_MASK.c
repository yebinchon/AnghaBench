#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_15__ {int /*<<< orphan*/  os_lock; int /*<<< orphan*/  os_dnodes; } ;
typedef  TYPE_1__ objset_t ;
struct TYPE_16__ {int dn_have_spill; TYPE_1__* dn_objset; TYPE_3__* dn_phys; int /*<<< orphan*/  dn_zfetch; scalar_t__ dn_id_flags; int /*<<< orphan*/  dn_maxblkid; scalar_t__ dn_num_slots; int /*<<< orphan*/  dn_bonuslen; int /*<<< orphan*/  dn_bonustype; int /*<<< orphan*/  dn_compress; int /*<<< orphan*/  dn_checksum; int /*<<< orphan*/  dn_nblkptr; int /*<<< orphan*/  dn_type; int /*<<< orphan*/  dn_nlevels; int /*<<< orphan*/  dn_indblkshift; scalar_t__ dn_datablkshift; scalar_t__ dn_datablkszsec; scalar_t__ dn_datablksz; TYPE_4__* dn_handle; int /*<<< orphan*/ * dn_dbuf; int /*<<< orphan*/  dn_object; scalar_t__ dn_moved; } ;
typedef  TYPE_2__ dnode_t ;
struct TYPE_17__ {int dn_datablkszsec; int dn_flags; int /*<<< orphan*/  dn_type; int /*<<< orphan*/  dn_maxblkid; scalar_t__ dn_extra_slots; int /*<<< orphan*/  dn_bonuslen; int /*<<< orphan*/  dn_bonustype; int /*<<< orphan*/  dn_compress; int /*<<< orphan*/  dn_checksum; int /*<<< orphan*/  dn_nblkptr; int /*<<< orphan*/  dn_nlevels; int /*<<< orphan*/  dn_indblkshift; } ;
typedef  TYPE_3__ dnode_phys_t ;
struct TYPE_18__ {TYPE_2__* dnh_dnode; int /*<<< orphan*/  dnh_zrlock; } ;
typedef  TYPE_4__ dnode_handle_t ;
typedef  int /*<<< orphan*/  dmu_buf_impl_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_SPACE_DNODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int DNODE_FLAG_SPILL_BLKPTR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int SPA_MINBLOCKSHIFT ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  dnode_cache ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static dnode_t *
FUNC14(objset_t *os, dnode_phys_t *dnp, dmu_buf_impl_t *db,
    uint64_t object, dnode_handle_t *dnh)
{
	dnode_t *dn;

	dn = FUNC8(dnode_cache, KM_SLEEP);
#ifdef _KERNEL
	ASSERT(!POINTER_IS_VALID(dn->dn_objset));
#endif /* _KERNEL */
	dn->dn_moved = 0;

	/*
	 * Defer setting dn_objset until the dnode is ready to be a candidate
	 * for the dnode_move() callback.
	 */
	dn->dn_object = object;
	dn->dn_dbuf = db;
	dn->dn_handle = dnh;
	dn->dn_phys = dnp;

	if (dnp->dn_datablkszsec) {
		FUNC7(dn, dnp->dn_datablkszsec << SPA_MINBLOCKSHIFT);
	} else {
		dn->dn_datablksz = 0;
		dn->dn_datablkszsec = 0;
		dn->dn_datablkshift = 0;
	}
	dn->dn_indblkshift = dnp->dn_indblkshift;
	dn->dn_nlevels = dnp->dn_nlevels;
	dn->dn_type = dnp->dn_type;
	dn->dn_nblkptr = dnp->dn_nblkptr;
	dn->dn_checksum = dnp->dn_checksum;
	dn->dn_compress = dnp->dn_compress;
	dn->dn_bonustype = dnp->dn_bonustype;
	dn->dn_bonuslen = dnp->dn_bonuslen;
	dn->dn_num_slots = dnp->dn_extra_slots + 1;
	dn->dn_maxblkid = dnp->dn_maxblkid;
	dn->dn_have_spill = ((dnp->dn_flags & DNODE_FLAG_SPILL_BLKPTR) != 0);
	dn->dn_id_flags = 0;

	FUNC6(&dn->dn_zfetch, dn);

	FUNC0(FUNC2(dn->dn_phys->dn_type));
	FUNC0(FUNC13(&dnh->dnh_zrlock));
	FUNC0(!FUNC3(dnh->dnh_dnode));

	FUNC11(&os->os_lock);

	/*
	 * Exclude special dnodes from os_dnodes so an empty os_dnodes
	 * signifies that the special dnodes have no references from
	 * their children (the entries in os_dnodes).  This allows
	 * dnode_destroy() to easily determine if the last child has
	 * been removed and then complete eviction of the objset.
	 */
	if (!FUNC1(object))
		FUNC9(&os->os_dnodes, dn);
	FUNC10();

	/*
	 * Everything else must be valid before assigning dn_objset
	 * makes the dnode eligible for dnode_move().
	 */
	dn->dn_objset = os;

	dnh->dnh_dnode = dn;
	FUNC12(&os->os_lock);

	FUNC5(sizeof (dnode_t), ARC_SPACE_DNODE);

	return (dn);
}