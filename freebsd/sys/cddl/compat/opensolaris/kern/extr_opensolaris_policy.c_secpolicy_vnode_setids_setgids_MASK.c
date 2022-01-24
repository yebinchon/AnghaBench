#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  v_mount; } ;
typedef  TYPE_1__ vnode_t ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  PRIV_VFS_SETGID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC3(vnode_t *vp, cred_t *cr, gid_t gid)
{

	if (FUNC0(gid, cr))
		return (0);
	if (FUNC2(vp->v_mount, cr) == 0)
		return (0);
	return (FUNC1(cr, PRIV_VFS_SETGID));
}