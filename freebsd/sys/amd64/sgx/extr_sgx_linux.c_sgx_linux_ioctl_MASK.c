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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u_long ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct linux_ioctl_args {int cmd; scalar_t__ arg; int /*<<< orphan*/  fd; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IOCTL ; 
 int EINVAL ; 
 int FUNC0 (int) ; 
 int IOC_IN ; 
 int IOC_OUT ; 
 int LINUX_IOC_IN ; 
 int LINUX_IOC_OUT ; 
 int SGX_IOCTL_MAX_DATA_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file**) ; 
 int FUNC5 (struct file*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 

__attribute__((used)) static int
FUNC6(struct thread *td, struct linux_ioctl_args *args)
{
	uint8_t data[SGX_IOCTL_MAX_DATA_LEN];
	cap_rights_t rights;
	struct file *fp;
	u_long cmd;
	int error;
	int len;

	error = FUNC4(td, args->fd, FUNC1(&rights, CAP_IOCTL), &fp);
	if (error != 0)
		return (error);

	cmd = args->cmd;

	args->cmd &= ~(LINUX_IOC_IN | LINUX_IOC_OUT);
	if ((cmd & LINUX_IOC_IN) != 0)
		args->cmd |= IOC_IN;
	if ((cmd & LINUX_IOC_OUT) != 0)
		args->cmd |= IOC_OUT;

	len = FUNC0(cmd);
	if (len > SGX_IOCTL_MAX_DATA_LEN) {
		error = EINVAL;
		goto out;
	}

	if ((cmd & LINUX_IOC_IN) != 0) {
		error = FUNC2((void *)args->arg, data, len);
		if (error != 0)
			goto out;
	}

	error = FUNC5(fp, args->cmd, (caddr_t)data, td->td_ucred, td);
out:
	FUNC3(fp, td);
	return (error);
}