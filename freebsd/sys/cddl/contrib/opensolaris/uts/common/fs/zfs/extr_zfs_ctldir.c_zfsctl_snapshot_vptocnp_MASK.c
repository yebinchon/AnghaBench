#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  v_mount; struct mount* v_mountedhere; TYPE_2__* v_data; } ;
typedef  TYPE_1__ vnode_t ;
struct vop_vptocnp_args {size_t* a_buflen; scalar_t__ a_buf; TYPE_1__** a_vpp; TYPE_1__* a_vp; } ;
struct mount {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  sn_name; } ;
typedef  TYPE_2__ sfs_node_t ;
typedef  enum vgetstate { ____Placeholder_vgetstate } vgetstate ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  LK_SHARED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 

__attribute__((used)) static int
FUNC12(struct vop_vptocnp_args *ap)
{
	struct mount *mp;
	vnode_t *dvp;
	vnode_t *vp;
	sfs_node_t *node;
	size_t len;
	enum vgetstate vs;
	int locked;
	int error;

	vp = ap->a_vp;
	node = vp->v_data;
	len = FUNC5(node->sn_name);
	if (*ap->a_buflen < len)
		return (FUNC1(ENOMEM));

	/*
	 * Prevent unmounting of the snapshot while the vnode lock
	 * is not held.  That is not strictly required, but allows
	 * us to assert that an uncovered snapshot vnode is never
	 * "leaked".
	 */
	mp = vp->v_mountedhere;
	if (mp == NULL)
		return (FUNC1(ENOENT));
	error = FUNC6(mp, 0);
	FUNC0(error == 0, ("vfs_busy(mp, 0) failed with %d", error));

	/*
	 * We can vput the vnode as we can now depend on the reference owned
	 * by the busied mp.  But we also need to hold the vnode, because
	 * the reference may go after vfs_unbusy() which has to be called
	 * before we can lock the vnode again.
	 */
	locked = FUNC2(vp);
	vs = FUNC9(vp);
	FUNC10(vp);

	/* Look up .zfs/snapshot, our parent. */
	error = FUNC11(vp->v_mount, NULL, LK_SHARED, &dvp);
	if (error == 0) {
		FUNC3(dvp, 0);
		*ap->a_vpp = dvp;
		*ap->a_buflen -= len;
		FUNC4(node->sn_name, ap->a_buf + *ap->a_buflen, len);
	}
	FUNC7(mp);
	FUNC8(vp, locked | LK_RETRY, vs);
	return (error);
}