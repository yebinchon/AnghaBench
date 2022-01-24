#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct linux_file {int f_kqflags; int /*<<< orphan*/  f_kqlock; TYPE_1__ f_selinfo; int /*<<< orphan*/  _file; } ;
struct linux_cdev {int dummy; } ;
struct file_operations {int /*<<< orphan*/  (* poll ) (struct linux_file*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int LINUX_KQ_FLAG_NEED_READ ; 
 int LINUX_KQ_FLAG_NEED_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ ,struct thread*,int /*<<< orphan*/ ) ; 
 int POLLIN ; 
 int POLLOUT ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC2 (struct linux_cdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct linux_file*,struct file_operations const**,struct linux_cdev**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct linux_file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct linux_file *filp, int kqflags)
{
	struct thread *td;
	const struct file_operations *fop;
	struct linux_cdev *ldev;
	int temp;

	if ((filp->f_kqflags & kqflags) == 0)
		return;

	td = curthread;

	FUNC3(filp, &fop, &ldev);
	/* get the latest polling state */
	temp = FUNC1(filp->_file, td, fop->poll(filp, NULL));
	FUNC2(ldev);

	FUNC4(&filp->f_kqlock);
	/* clear kqflags */
	filp->f_kqflags &= ~(LINUX_KQ_FLAG_NEED_READ |
	    LINUX_KQ_FLAG_NEED_WRITE);
	/* update kqflags */
	if ((temp & (POLLIN | POLLOUT)) != 0) {
		if ((temp & POLLIN) != 0)
			filp->f_kqflags |= LINUX_KQ_FLAG_NEED_READ;
		if ((temp & POLLOUT) != 0)
			filp->f_kqflags |= LINUX_KQ_FLAG_NEED_WRITE;

		/* make sure the "knote" gets woken up */
		FUNC0(&filp->f_selinfo.si_note, 0);
	}
	FUNC5(&filp->f_kqlock);
}