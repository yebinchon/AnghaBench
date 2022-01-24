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
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct linux_file {int /*<<< orphan*/  f_flags; } ;
struct linux_cdev {int dummy; } ;
struct file_operations {int /*<<< orphan*/  (* poll ) (struct linux_file*,int /*<<< orphan*/ ) ;} ;
struct file {int /*<<< orphan*/  f_flag; scalar_t__ f_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_POLL_TABLE_NORMAL ; 
 int FUNC0 (struct file*,struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct linux_cdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct linux_file*,struct file_operations const**,struct linux_cdev**) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct linux_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct file *file, int events, struct ucred *active_cred,
    struct thread *td)
{
	struct linux_file *filp;
	const struct file_operations *fop;
	struct linux_cdev *ldev;
	int revents;

	filp = (struct linux_file *)file->f_data;
	filp->f_flags = file->f_flag;
	FUNC3(td);
	FUNC2(filp, &fop, &ldev);
	if (fop->poll != NULL) {
		revents = FUNC0(file, td, fop->poll(filp,
		    LINUX_POLL_TABLE_NORMAL)) & events;
	} else {
		revents = 0;
	}
	FUNC1(ldev);
	return (revents);
}