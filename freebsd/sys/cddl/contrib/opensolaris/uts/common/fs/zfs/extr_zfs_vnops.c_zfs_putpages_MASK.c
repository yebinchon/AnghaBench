#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_20__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_34__ {int z_blksz; int /*<<< orphan*/  z_id; int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/ * z_pflags; int /*<<< orphan*/  z_rangelock; TYPE_4__* z_zfsvfs; } ;
typedef  TYPE_3__ znode_t ;
struct TYPE_35__ {int /*<<< orphan*/  z_log; TYPE_20__* z_os; } ;
typedef  TYPE_4__ zfsvfs_t ;
typedef  TYPE_5__* vm_page_t ;
typedef  scalar_t__ vm_ooffset_t ;
typedef  TYPE_6__* vm_object_t ;
typedef  int uint_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct vnode {TYPE_6__* v_object; } ;
struct sf_buf {int dummy; } ;
typedef  int /*<<< orphan*/  sa_bulk_attr_t ;
typedef  int /*<<< orphan*/  locked_range_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_31__ {scalar_t__ vnp_size; } ;
struct TYPE_33__ {TYPE_1__ vnp; } ;
struct TYPE_37__ {TYPE_2__ un_pager; } ;
struct TYPE_36__ {int /*<<< orphan*/  pindex; TYPE_6__* object; } ;
struct TYPE_32__ {scalar_t__ os_sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  CONTENT_MODIFIED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 size_t PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  RL_WRITER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  TX_WRITE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 scalar_t__ ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int FUNC13 (size_t) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_20__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_20__*,int /*<<< orphan*/ ,scalar_t__,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC21 (TYPE_20__*,int /*<<< orphan*/ ,scalar_t__,size_t,TYPE_5__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (scalar_t__,int) ; 
 size_t FUNC26 (scalar_t__,int) ; 
 int FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  v_vnodeout ; 
 int /*<<< orphan*/  v_vnodepgsout ; 
 int /*<<< orphan*/  FUNC28 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_5__*,struct sf_buf**) ; 
 scalar_t__ FUNC33 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct sf_buf*) ; 
 int zfs_vm_pagerput_inval ; 
 int zfs_vm_pagerput_sync ; 
 int zfs_vm_pagerret_bad ; 
 int zfs_vm_pagerret_error ; 
 int zfs_vm_pagerret_ok ; 
 int /*<<< orphan*/  FUNC37 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC40(struct vnode *vp, vm_page_t *ma, size_t len, int flags,
    int *rtvals)
{
	znode_t		*zp = FUNC9(vp);
	zfsvfs_t	*zfsvfs = zp->z_zfsvfs;
	locked_range_t	*lr;
	dmu_tx_t	*tx;
	struct sf_buf	*sf;
	vm_object_t	object;
	vm_page_t	m;
	caddr_t		va;
	size_t		tocopy;
	size_t		lo_len;
	vm_ooffset_t	lo_off;
	vm_ooffset_t	off;
	uint_t		blksz;
	int		ncount;
	int		pcount;
	int		err;
	int		i;

	FUNC10(zfsvfs);
	FUNC12(zp);

	object = vp->v_object;
	pcount = FUNC13(len);
	ncount = pcount;

	FUNC2(ma[0]->object == object, ("mismatching object"));
	FUNC2(len > 0 && (len & PAGE_MASK) == 0, ("unexpected length"));

	for (i = 0; i < pcount; i++)
		rtvals[i] = zfs_vm_pagerret_error;

	off = FUNC1(ma[0]->pindex);
	blksz = zp->z_blksz;
	lo_off = FUNC25(off, blksz);
	lo_len = FUNC26(len + (off - lo_off), blksz);
	lr = FUNC23(&zp->z_rangelock, lo_off, lo_len, RL_WRITER);

	FUNC37(object);
	if (len + off > object->un_pager.vnp.vnp_size) {
		if (object->un_pager.vnp.vnp_size > off) {
			int pgoff;

			len = object->un_pager.vnp.vnp_size - off;
			ncount = FUNC13(len);
			if ((pgoff = (int)len & PAGE_MASK) != 0) {
				/*
				 * If the object is locked and the following
				 * conditions hold, then the page's dirty
				 * field cannot be concurrently changed by a
				 * pmap operation.
				 */
				m = ma[ncount - 1];
				FUNC28(m);
				FUNC2(!FUNC22(m),
				    ("zfs_putpages: page %p is not read-only", m));
				FUNC29(m, pgoff, PAGE_SIZE -
				    pgoff);
			}
		} else {
			len = 0;
			ncount = 0;
		}
		if (ncount < pcount) {
			for (i = ncount; i < pcount; i++) {
				rtvals[i] = zfs_vm_pagerret_bad;
			}
		}
	}
	FUNC38(object);

	if (ncount == 0)
		goto out;

	if (FUNC33(zfsvfs, zp, B_FALSE) ||
	    FUNC33(zfsvfs, zp, B_TRUE)) {
		goto out;
	}

	tx = FUNC17(zfsvfs->z_os);
	FUNC19(tx, zp->z_id, off, len);

	FUNC18(tx, zp->z_sa_hdl, B_FALSE);
	FUNC34(tx, zp);
	err = FUNC15(tx, TXG_WAIT);
	if (err != 0) {
		FUNC14(tx);
		goto out;
	}

	if (zp->z_blksz < PAGE_SIZE) {
		for (i = 0; len > 0; off += tocopy, len -= tocopy, i++) {
			tocopy = len > PAGE_SIZE ? PAGE_SIZE : len;
			va = FUNC32(ma[i], &sf);
			FUNC20(zfsvfs->z_os, zp->z_id, off, tocopy, va, tx);
			FUNC36(sf);
		}
	} else {
		err = FUNC21(zfsvfs->z_os, zp->z_id, off, len, ma, tx);
	}

	if (err == 0) {
		uint64_t mtime[2], ctime[2];
		sa_bulk_attr_t bulk[3];
		int count = 0;

		FUNC3(bulk, count, FUNC6(zfsvfs), NULL,
		    &mtime, 16);
		FUNC3(bulk, count, FUNC4(zfsvfs), NULL,
		    &ctime, 16);
		FUNC3(bulk, count, FUNC5(zfsvfs), NULL,
		    &zp->z_pflags, 8);
		FUNC35(zp, CONTENT_MODIFIED, mtime, ctime,
		    B_TRUE);
		err = FUNC27(zp->z_sa_hdl, bulk, count, tx);
		FUNC0(err);
		FUNC31(zfsvfs->z_log, tx, TX_WRITE, zp, off, len, 0);

		FUNC37(object);
		for (i = 0; i < ncount; i++) {
			rtvals[i] = zfs_vm_pagerret_ok;
			FUNC30(ma[i]);
		}
		FUNC38(object);
		FUNC8(v_vnodeout);
		FUNC7(v_vnodepgsout, ncount);
	}
	FUNC16(tx);

out:
	FUNC24(lr);
	if ((flags & (zfs_vm_pagerput_sync | zfs_vm_pagerput_inval)) != 0 ||
	    zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
		FUNC39(zfsvfs->z_log, zp->z_id);
	FUNC11(zfsvfs);
	return (rtvals[0]);
}