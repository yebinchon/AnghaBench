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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_int ;
struct vnode {int /*<<< orphan*/ * v_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  sfs_compare_ids ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct vnode**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct vnode *vp, int flags, uint64_t parent_id,
   uint64_t id, struct vnode **vpp)
{
	int err;

	FUNC0(vp->v_data != NULL, ("sfs_vnode_insert with NULL v_data"));
	err = FUNC1(vp, (u_int)id, flags, curthread, vpp,
	    sfs_compare_ids, vp->v_data);
	return (err);
}