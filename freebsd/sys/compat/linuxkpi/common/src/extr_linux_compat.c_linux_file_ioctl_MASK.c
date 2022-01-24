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
typedef  int u_long ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct linux_file {int f_flags; int /*<<< orphan*/  f_sigio; } ;
struct linux_cdev {int dummy; } ;
struct file_operations {int /*<<< orphan*/  (* fasync ) (int /*<<< orphan*/ ,struct linux_file*,int) ;} ;
struct file {int f_flag; scalar_t__ f_data; } ;

/* Variables and functions */
 int FASYNC ; 
#define  FIOASYNC 131 
#define  FIOGETOWN 130 
#define  FIONBIO 129 
#define  FIOSETOWN 128 
 int FUNC0 (struct file*,struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct linux_cdev*) ; 
 int FUNC4 (struct file*,struct linux_file*,struct file_operations const*,int,void*,struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct linux_file*,struct file_operations const**,struct linux_cdev**) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct linux_file*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct linux_file*,int) ; 

__attribute__((used)) static int
FUNC9(struct file *fp, u_long cmd, void *data, struct ucred *cred,
    struct thread *td)
{
	struct linux_file *filp;
	const struct file_operations *fop;
	struct linux_cdev *ldev;
	int error;

	error = 0;
	filp = (struct linux_file *)fp->f_data;
	filp->f_flags = fp->f_flag;
	FUNC5(filp, &fop, &ldev);

	FUNC6(td);
	switch (cmd) {
	case FIONBIO:
		break;
	case FIOASYNC:
		if (fop->fasync == NULL)
			break;
		error = -FUNC0(fp, td, fop->fasync(0, filp, fp->f_flag & FASYNC));
		break;
	case FIOSETOWN:
		error = FUNC2(*(int *)data, &filp->f_sigio);
		if (error == 0) {
			if (fop->fasync == NULL)
				break;
			error = -FUNC0(fp, td, fop->fasync(0, filp,
			    fp->f_flag & FASYNC));
		}
		break;
	case FIOGETOWN:
		*(int *)data = FUNC1(&filp->f_sigio);
		break;
	default:
		error = FUNC4(fp, filp, fop, cmd, data, td);
		break;
	}
	FUNC3(ldev);
	return (error);
}