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
struct thread {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct linux_file {int f_kqflags; int /*<<< orphan*/  f_kqlock; TYPE_2__ f_selinfo; TYPE_1__* f_op; int /*<<< orphan*/  f_flags; } ;
struct knote {int kn_filter; struct linux_file* kn_hook; int /*<<< orphan*/ * kn_fop; } ;
struct file {int /*<<< orphan*/  f_flag; scalar_t__ f_data; } ;
struct TYPE_3__ {int /*<<< orphan*/ * poll; } ;

/* Variables and functions */
 int EINVAL ; 
#define  EVFILT_READ 129 
#define  EVFILT_WRITE 128 
 int LINUX_KQ_FLAG_HAS_READ ; 
 int LINUX_KQ_FLAG_HAS_WRITE ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*,int) ; 
 int /*<<< orphan*/  linux_dev_kqfiltops_read ; 
 int /*<<< orphan*/  linux_dev_kqfiltops_write ; 
 int /*<<< orphan*/  FUNC1 (struct linux_file*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct file *file, struct knote *kn)
{
	struct linux_file *filp;
	struct thread *td;
	int error;

	td = curthread;
	filp = (struct linux_file *)file->f_data;
	filp->f_flags = file->f_flag;
	if (filp->f_op->poll == NULL)
		return (EINVAL);

	FUNC3(&filp->f_kqlock);
	switch (kn->kn_filter) {
	case EVFILT_READ:
		filp->f_kqflags |= LINUX_KQ_FLAG_HAS_READ;
		kn->kn_fop = &linux_dev_kqfiltops_read;
		kn->kn_hook = filp;
		FUNC0(&filp->f_selinfo.si_note, kn, 1);
		error = 0;
		break;
	case EVFILT_WRITE:
		filp->f_kqflags |= LINUX_KQ_FLAG_HAS_WRITE;
		kn->kn_fop = &linux_dev_kqfiltops_write;
		kn->kn_hook = filp;
		FUNC0(&filp->f_selinfo.si_note, kn, 1);
		error = 0;
		break;
	default:
		error = EINVAL;
		break;
	}
	FUNC4(&filp->f_kqlock);

	if (error == 0) {
		FUNC2(td);

		/* update kqfilter status, if any */
		FUNC1(filp,
		    LINUX_KQ_FLAG_HAS_READ | LINUX_KQ_FLAG_HAS_WRITE);
	}
	return (error);
}