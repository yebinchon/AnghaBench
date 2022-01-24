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
typedef  int /*<<< orphan*/  vnode_t ;
struct vop_vptocnp_args {int* a_buflen; int a_buf; int /*<<< orphan*/ ** a_vpp; int /*<<< orphan*/  a_vp; } ;
typedef  int /*<<< orphan*/  dotzfs_name ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  LK_SHARED ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  zfsctl_fs_root_vnode ; 

__attribute__((used)) static int
FUNC4(struct vop_vptocnp_args *ap)
{
	static const char dotzfs_name[4] = ".zfs";
	vnode_t *dvp;
	int error;

	if (*ap->a_buflen < sizeof (dotzfs_name))
		return (FUNC0(ENOMEM));

	error = FUNC3(ap->a_vp, zfsctl_fs_root_vnode, NULL,
	    LK_SHARED, &dvp);
	if (error != 0)
		return (FUNC0(error));

	FUNC1(dvp, 0);
	*ap->a_vpp = dvp;
	*ap->a_buflen -= sizeof (dotzfs_name);
	FUNC2(dotzfs_name, ap->a_buf + *ap->a_buflen, sizeof (dotzfs_name));
	return (0);
}