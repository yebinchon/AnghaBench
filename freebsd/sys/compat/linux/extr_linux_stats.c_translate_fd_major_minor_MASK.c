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
struct vnode {int /*<<< orphan*/ * v_rdev; } ;
struct tty {int /*<<< orphan*/ * t_dev; } ;
struct thread {int dummy; } ;
struct stat {int st_rdev; int /*<<< orphan*/  st_mode; } ;
struct file {scalar_t__ f_type; struct tty* f_data; struct vnode* f_vnode; } ;

/* Variables and functions */
 scalar_t__ DTYPE_PTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cap_no_rights ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 scalar_t__ FUNC4 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static void
FUNC6(struct thread *td, int fd, struct stat *buf)
{
	struct file *fp;
	struct vnode *vp;
	int major, minor;

	/*
	 * No capability rights required here.
	 */
	if ((!FUNC1(buf->st_mode) && !FUNC0(buf->st_mode)) ||
	    FUNC4(td, fd, &cap_no_rights, &fp) != 0)
		return;
	vp = fp->f_vnode;
	if (vp != NULL && vp->v_rdev != NULL &&
	    FUNC5(FUNC2(vp->v_rdev),
					 &major, &minor) == 0) {
		buf->st_rdev = (major << 8 | minor);
	} else if (fp->f_type == DTYPE_PTS) {
		struct tty *tp = fp->f_data;

		/* Convert the numbers for the slave device. */
		if (FUNC5(FUNC2(tp->t_dev),
					 &major, &minor) == 0) {
			buf->st_rdev = (major << 8 | minor);
		}
	}
	FUNC3(fp, td);
}