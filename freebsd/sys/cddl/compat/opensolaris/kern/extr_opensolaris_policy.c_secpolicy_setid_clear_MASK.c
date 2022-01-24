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
struct vattr {int va_mode; int /*<<< orphan*/  va_mask; } ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT_MODE ; 
 int /*<<< orphan*/  PRIV_VFS_RETAINSUGID ; 
 int S_ISGID ; 
 int S_ISUID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(struct vattr *vap, vnode_t *vp, cred_t *cr)
{

	if (FUNC1(vp->v_mount, cr) == 0)
		return;

	if ((vap->va_mode & (S_ISUID | S_ISGID)) != 0) {
		if (FUNC0(cr, PRIV_VFS_RETAINSUGID)) {
			vap->va_mask |= AT_MODE;
			vap->va_mode &= ~(S_ISUID|S_ISGID);
		}
	}
}