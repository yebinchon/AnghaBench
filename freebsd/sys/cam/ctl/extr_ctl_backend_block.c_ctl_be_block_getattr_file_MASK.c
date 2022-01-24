#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct vattr {int va_bytes; } ;
struct statfs {int f_bavail; int f_bsize; } ;
struct TYPE_6__ {int blocksize; } ;
struct ctl_be_block_lun {TYPE_2__* vn; TYPE_1__ cbe_lun; } ;
struct TYPE_8__ {int /*<<< orphan*/  td_ucred; } ;
struct TYPE_7__ {int v_iflag; int /*<<< orphan*/  v_mount; } ;

/* Variables and functions */
 int LK_RETRY ; 
 int LK_SHARED ; 
 int UINT64_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,struct statfs*) ; 
 int VI_DOOMED ; 
 int FUNC1 (TYPE_2__*,struct vattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* curthread ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

__attribute__((used)) static uint64_t
FUNC5(struct ctl_be_block_lun *be_lun, const char *attrname)
{
	struct vattr		vattr;
	struct statfs		statfs;
	uint64_t		val;
	int			error;

	val = UINT64_MAX;
	if (be_lun->vn == NULL)
		return (val);
	FUNC4(be_lun->vn, LK_SHARED | LK_RETRY);
	if (FUNC3(attrname, "blocksused") == 0) {
		error = FUNC1(be_lun->vn, &vattr, curthread->td_ucred);
		if (error == 0)
			val = vattr.va_bytes / be_lun->cbe_lun.blocksize;
	}
	if (FUNC3(attrname, "blocksavail") == 0 &&
	    (be_lun->vn->v_iflag & VI_DOOMED) == 0) {
		error = FUNC0(be_lun->vn->v_mount, &statfs);
		if (error == 0)
			val = statfs.f_bavail * statfs.f_bsize /
			    be_lun->cbe_lun.blocksize;
	}
	FUNC2(be_lun->vn, 0);
	return (val);
}