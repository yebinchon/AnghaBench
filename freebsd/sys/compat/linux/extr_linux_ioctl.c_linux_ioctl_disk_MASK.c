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
typedef  int u_int ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct linux_ioctl_args {int cmd; scalar_t__ arg; int /*<<< orphan*/  fd; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  sectorsize ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int /*<<< orphan*/  DIOCGSECTORSIZE ; 
 int ENOIOCTL ; 
#define  LINUX_BLKGETSIZE 129 
#define  LINUX_BLKSSZGET 128 
 int /*<<< orphan*/  cap_ioctl_rights ; 
 int FUNC0 (int*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct thread*) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 

__attribute__((used)) static int
FUNC4(struct thread *td, struct linux_ioctl_args *args)
{
	struct file *fp;
	int error;
	u_int sectorsize;
	off_t mediasize;

	error = FUNC2(td, args->fd, &cap_ioctl_rights, &fp);
	if (error != 0)
		return (error);
	switch (args->cmd & 0xffff) {
	case LINUX_BLKGETSIZE:
		error = FUNC3(fp, DIOCGSECTORSIZE,
		    (caddr_t)&sectorsize, td->td_ucred, td);
		if (!error)
			error = FUNC3(fp, DIOCGMEDIASIZE,
			    (caddr_t)&mediasize, td->td_ucred, td);
		FUNC1(fp, td);
		if (error)
			return (error);
		sectorsize = mediasize / sectorsize;
		/*
		 * XXX: How do we know we return the right size of integer ?
		 */
		return (FUNC0(&sectorsize, (void *)args->arg,
		    sizeof(sectorsize)));
		break;
	case LINUX_BLKSSZGET:
		error = FUNC3(fp, DIOCGSECTORSIZE,
		    (caddr_t)&sectorsize, td->td_ucred, td);
		FUNC1(fp, td);
		if (error)
			return (error);
		return (FUNC0(&sectorsize, (void *)args->arg,
		    sizeof(sectorsize)));
		break;
	}
	FUNC1(fp, td);
	return (ENOIOCTL);
}