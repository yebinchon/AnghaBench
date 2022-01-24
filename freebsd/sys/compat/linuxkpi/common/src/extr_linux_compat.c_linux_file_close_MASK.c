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
struct linux_file {int /*<<< orphan*/ * f_cdev; int /*<<< orphan*/ * f_vnode; int /*<<< orphan*/  f_sigio; int /*<<< orphan*/  f_flags; } ;
struct linux_cdev {int dummy; } ;
struct file_operations {int /*<<< orphan*/  (* release ) (int /*<<< orphan*/ *,struct linux_file*) ;} ;
struct file {int /*<<< orphan*/  f_flag; scalar_t__ f_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct file*,struct thread*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct linux_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct linux_file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct linux_cdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct linux_file*,struct file_operations const**,struct linux_cdev**) ; 
 int /*<<< orphan*/  FUNC8 (struct linux_file*) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct linux_file*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(struct file *file, struct thread *td)
{
	struct linux_file *filp;
	const struct file_operations *fop;
	struct linux_cdev *ldev;
	int error;

	filp = (struct linux_file *)file->f_data;

	FUNC0(FUNC2(filp) == 0,
	    ("File refcount(%d) is not zero", FUNC2(filp)));

	error = 0;
	filp->f_flags = file->f_flag;
	FUNC9(td);
	FUNC8(filp);
	FUNC7(filp, &fop, &ldev);
	if (fop->release != NULL)
		error = -FUNC1(file, td, fop->release(filp->f_vnode, filp));
	FUNC3(&filp->f_sigio);
	if (filp->f_vnode != NULL)
		FUNC11(filp->f_vnode);
	FUNC6(ldev);
	if (filp->f_cdev != NULL)
		FUNC5(filp->f_cdev);
	FUNC4(filp);

	return (error);
}