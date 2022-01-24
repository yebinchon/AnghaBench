#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ z_id; } ;
typedef  TYPE_3__ znode_t ;
struct TYPE_24__ {scalar_t__ z_root; struct TYPE_24__* z_parent; } ;
typedef  TYPE_4__ zfsvfs_t ;
struct TYPE_25__ {int v_iflag; TYPE_2__* v_mount; TYPE_1__* v_vfsp; } ;
typedef  TYPE_5__ vnode_t ;
struct vop_vptocnp_args {size_t* a_buflen; scalar_t__ a_buf; int /*<<< orphan*/  a_cred; int /*<<< orphan*/ * a_vpp; TYPE_5__* a_vp; } ;
typedef  enum vgetstate { ____Placeholder_vgetstate } vgetstate ;
struct TYPE_22__ {TYPE_5__* mnt_vnodecovered; } ;
struct TYPE_21__ {TYPE_4__* vfs_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  LK_SHARED ; 
 int /*<<< orphan*/  MAXNAMLEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int VI_DOOMED ; 
 int FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,size_t*) ; 
 TYPE_3__* FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,size_t) ; 
 size_t FUNC10 (char*) ; 
 int FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 int FUNC15 (TYPE_3__*,TYPE_3__**,char*) ; 

__attribute__((used)) static int
FUNC16(struct vop_vptocnp_args *ap)
{
	vnode_t *covered_vp;
	vnode_t *vp = ap->a_vp;;
	zfsvfs_t *zfsvfs = vp->v_vfsp->vfs_data;
	znode_t *zp = FUNC4(vp);
	enum vgetstate vs;
	int ltype;
	int error;

	FUNC5(zfsvfs);
	FUNC7(zp);

	/*
	 * If we are a snapshot mounted under .zfs, run the operation
	 * on the covered vnode.
	 */
	if (zp->z_id != zfsvfs->z_root || zfsvfs->z_parent == zfsvfs) {
		char name[MAXNAMLEN + 1];
		znode_t *dzp;
		size_t len;

		error = FUNC15(zp, &dzp, name);
		if (error == 0) {
			len = FUNC10(name);
			if (*ap->a_buflen < len)
				error = FUNC0(ENOMEM);
		}
		if (error == 0) {
			*ap->a_buflen -= len;
			FUNC9(name, ap->a_buf + *ap->a_buflen, len);
			*ap->a_vpp = FUNC8(dzp);
		}
		FUNC6(zfsvfs);
		return (error);
	}
	FUNC6(zfsvfs);

	covered_vp = vp->v_mount->mnt_vnodecovered;
	vs = FUNC12(covered_vp);
	ltype = FUNC1(vp);
	FUNC2(vp, 0);
	error = FUNC11(covered_vp, LK_SHARED, vs);
	if (error == 0) {
		error = FUNC3(covered_vp, ap->a_vpp, ap->a_cred,
		    ap->a_buf, ap->a_buflen);
		FUNC14(covered_vp);
	}
	FUNC13(vp, ltype | LK_RETRY);
	if ((vp->v_iflag & VI_DOOMED) != 0)
		error = FUNC0(ENOENT);
	return (error);
}