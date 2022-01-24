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
struct thread {int dummy; } ;
struct linux_file {int /*<<< orphan*/  f_mode; int /*<<< orphan*/  f_vnode; struct linux_cdev* f_cdev; struct file* _file; int /*<<< orphan*/  f_flags; int /*<<< orphan*/  f_op; int /*<<< orphan*/  f_dentry_store; int /*<<< orphan*/ * f_dentry; } ;
struct linux_cdev {int /*<<< orphan*/  refs; int /*<<< orphan*/  ops; } ;
struct file_operations {int (* open ) (int /*<<< orphan*/ ,struct linux_file*) ;} ;
struct file {int /*<<< orphan*/  f_vnode; int /*<<< orphan*/  f_flag; } ;
struct cdev {struct linux_cdev* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTYPE_DEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct linux_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct linux_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct linux_cdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct linux_cdev*) ; 
 struct linux_file* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct linux_file*,struct file_operations const**,struct linux_cdev**) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 int /*<<< orphan*/  linuxfileops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct linux_file*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct cdev *dev, int fflags, struct thread *td,
    struct file *file)
{
	struct linux_cdev *ldev;
	struct linux_file *filp;
	const struct file_operations *fop;
	int error;

	ldev = dev->si_drv1;

	filp = FUNC4();
	filp->f_dentry = &filp->f_dentry_store;
	filp->f_op = ldev->ops;
	filp->f_mode = file->f_flag;
	filp->f_flags = file->f_flag;
	filp->f_vnode = file->f_vnode;
	filp->_file = file;
	FUNC7(&ldev->refs);
	filp->f_cdev = ldev;

	FUNC6(td);
	FUNC5(filp, &fop, &ldev);

	if (fop->open != NULL) {
		error = -fop->open(file->f_vnode, filp);
		if (error != 0) {
			FUNC3(ldev);
			FUNC2(filp->f_cdev);
			FUNC1(filp);
			return (error);
		}
	}

	/* hold on to the vnode - used for fstat() */
	FUNC9(filp->f_vnode);

	/* release the file from devfs */
	FUNC0(file, filp->f_mode, DTYPE_DEV, filp, &linuxfileops);
	FUNC3(ldev);
	return (ENXIO);
}