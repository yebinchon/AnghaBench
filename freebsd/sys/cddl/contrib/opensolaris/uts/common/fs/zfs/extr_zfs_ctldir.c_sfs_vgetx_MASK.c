#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct vop_vector {int dummy; } ;
struct vnode {int /*<<< orphan*/ * v_data; int /*<<< orphan*/  v_vnlock; } ;
struct mount {int dummy; } ;
typedef  int /*<<< orphan*/  (* sfs_vnode_setup_fn ) (struct vnode*,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int FUNC1 (char const*,struct mount*,struct vop_vector*,struct vnode**) ; 
 int FUNC2 (struct vnode*,struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mount*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode**) ; 
 int FUNC5 (struct vnode*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode**) ; 

__attribute__((used)) static int
FUNC6(struct mount *mp, int flags, uint64_t parent_id, uint64_t id,
    const char *tag, struct vop_vector *vops,
    sfs_vnode_setup_fn setup, void *arg,
    struct vnode **vpp)
{
	struct vnode *vp;
	int error;

	error = FUNC4(mp, flags, parent_id, id, vpp);
	if (error != 0 || *vpp != NULL) {
		FUNC0(error == 0, (*vpp)->v_data != NULL,
		    "sfs vnode with no data");
		return (error);
	}

	/* Allocate a new vnode/inode. */
	error = FUNC1(tag, mp, vops, &vp);
	if (error != 0) {
		*vpp = NULL;
		return (error);
	}

	/*
	 * Exclusively lock the vnode vnode while it's being constructed.
	 */
	FUNC3(vp->v_vnlock, LK_EXCLUSIVE, NULL);
	error = FUNC2(vp, mp);
	if (error != 0) {
		*vpp = NULL;
		return (error);
	}

	setup(vp, arg);

	error = FUNC5(vp, flags, parent_id, id, vpp);
	if (error != 0 || *vpp != NULL) {
		FUNC0(error == 0, (*vpp)->v_data != NULL,
		    "sfs vnode with no data");
		return (error);
	}

	*vpp = vp;
	return (0);
}