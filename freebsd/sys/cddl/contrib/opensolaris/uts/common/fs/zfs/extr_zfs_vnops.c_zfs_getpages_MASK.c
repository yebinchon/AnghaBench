#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ z_blksz; int /*<<< orphan*/  z_id; int /*<<< orphan*/  z_rangelock; TYPE_4__* z_zfsvfs; } ;
typedef  TYPE_3__ znode_t ;
struct TYPE_20__ {int /*<<< orphan*/ * z_os; } ;
typedef  TYPE_4__ zfsvfs_t ;
typedef  TYPE_5__* vm_page_t ;
typedef  TYPE_6__* vm_object_t ;
typedef  scalar_t__ uint_t ;
struct vnode {int dummy; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  locked_range_t ;
struct TYPE_17__ {int vnp_size; } ;
struct TYPE_18__ {TYPE_1__ vnp; } ;
struct TYPE_22__ {TYPE_2__ un_pager; } ;
struct TYPE_21__ {int pindex; TYPE_6__* object; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  RL_READER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__**,int,int*,int*,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int,scalar_t__) ; 
 int FUNC15 (int,scalar_t__) ; 
 int /*<<< orphan*/  v_vnodein ; 
 int /*<<< orphan*/  v_vnodepgsin ; 
 int zfs_vm_pagerret_bad ; 
 int zfs_vm_pagerret_error ; 
 int zfs_vm_pagerret_ok ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*) ; 

__attribute__((used)) static int
FUNC18(struct vnode *vp, vm_page_t *ma, int count, int *rbehind,
    int *rahead)
{
	znode_t *zp = FUNC5(vp);
	zfsvfs_t *zfsvfs = zp->z_zfsvfs;
	objset_t *os = zp->z_zfsvfs->z_os;
	locked_range_t *lr;
	vm_object_t object;
	off_t start, end, obj_size;
	uint_t blksz;
	int pgsin_b, pgsin_a;
	int error;

	FUNC7(zfsvfs);
	FUNC9(zp);

	start = FUNC0(ma[0]->pindex);
	end = FUNC0(ma[count - 1]->pindex + 1);

	/*
	 * Lock a range covering all required and optional pages.
	 * Note that we need to handle the case of the block size growing.
	 */
	for (;;) {
		blksz = zp->z_blksz;
		lr = FUNC11(&zp->z_rangelock, FUNC14(start, blksz),
		    FUNC15(end, blksz) - FUNC14(start, blksz), RL_READER);
		if (blksz == zp->z_blksz)
			break;
		FUNC12(lr);
	}

	object = ma[0]->object;
	FUNC16(object);
	obj_size = object->un_pager.vnp.vnp_size;
	FUNC17(object);
	if (FUNC0(ma[count - 1]->pindex) >= obj_size) {
		FUNC12(lr);
		FUNC8(zfsvfs);
		return (zfs_vm_pagerret_bad);
	}

	pgsin_b = 0;
	if (rbehind != NULL) {
		pgsin_b = FUNC2(start - FUNC14(start, blksz));
		pgsin_b = FUNC1(*rbehind, pgsin_b);
	}

	pgsin_a = 0;
	if (rahead != NULL) {
		pgsin_a = FUNC2(FUNC15(end, blksz) - end);
		if (end + FUNC0(pgsin_a) >= obj_size)
			pgsin_a = FUNC2(FUNC13(obj_size) - end);
		pgsin_a = FUNC1(*rahead, pgsin_a);
	}

	/*
	 * NB: we need to pass the exact byte size of the data that we expect
	 * to read after accounting for the file size.  This is required because
	 * ZFS will panic if we request DMU to read beyond the end of the last
	 * allocated block.
	 */
	error = FUNC10(os, zp->z_id, ma, count, &pgsin_b, &pgsin_a,
	    FUNC1(end, obj_size) - (end - PAGE_SIZE));

	FUNC12(lr);
	FUNC6(zfsvfs, zp);
	FUNC8(zfsvfs);

	if (error != 0)
		return (zfs_vm_pagerret_error);

	FUNC4(v_vnodein);
	FUNC3(v_vnodepgsin, count + pgsin_b + pgsin_a);
	if (rbehind != NULL)
		*rbehind = pgsin_b;
	if (rahead != NULL)
		*rahead = pgsin_a;
	return (zfs_vm_pagerret_ok);
}