#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnstat {int vn_fileid; int /*<<< orphan*/  vn_fsid; } ;
struct vnode {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * val; } ;
struct TYPE_4__ {TYPE_1__ f_fsid; } ;
struct smbnode {int n_ino; TYPE_2__ mnt_stat; } ;
struct mount {int n_ino; TYPE_2__ mnt_stat; } ;
typedef  int /*<<< orphan*/  node ;
typedef  int /*<<< orphan*/  mnt ;
typedef  struct vnstat kvm_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnstat*) ; 
 scalar_t__ FUNC2 (struct vnode*) ; 
 int FUNC3 (struct vnstat*,unsigned long,struct smbnode*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,...) ; 

int
FUNC5(kvm_t *kd, struct vnode *vp, struct vnstat *vn)
{
	struct smbnode node;
	struct mount mnt;
	int error;

	FUNC1(kd);
	FUNC1(vn);
	error = FUNC3(kd, (unsigned long)FUNC0(vp), &node,
	    sizeof(node));
	if (error != 0) {
		FUNC4("can't read smbfs fnode at %p", (void *)FUNC0(vp));
		return (1);
	}
        error = FUNC3(kd, (unsigned long)FUNC2(vp), &mnt,
	    sizeof(mnt));
        if (error != 0) {
                FUNC4("can't read mount at %p for vnode %p",
                    (void *)FUNC2(vp), vp);
                return (1);
        }
	vn->vn_fileid = node.n_ino;
	if (vn->vn_fileid == 0)
		vn->vn_fileid = 2;
	vn->vn_fsid = mnt.mnt_stat.f_fsid.val[0];
	return (0);
}