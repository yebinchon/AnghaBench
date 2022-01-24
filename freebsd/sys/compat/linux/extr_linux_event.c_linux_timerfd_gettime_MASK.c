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
struct timerfd {int /*<<< orphan*/  tfd_lock; } ;
struct thread {int dummy; } ;
struct linux_timerfd_gettime_args {int /*<<< orphan*/  old_value; int /*<<< orphan*/  fd; } ;
struct l_itimerspec {int dummy; } ;
struct itimerspec {int dummy; } ;
struct file {scalar_t__ f_type; struct timerfd* f_data; } ;
typedef  int /*<<< orphan*/  lots ;

/* Variables and functions */
 scalar_t__ DTYPE_LINUXTFD ; 
 int EINVAL ; 
 int /*<<< orphan*/  cap_read_rights ; 
 int FUNC0 (struct l_itimerspec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct thread*) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file**) ; 
 int /*<<< orphan*/  FUNC3 (struct timerfd*,struct itimerspec*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct l_itimerspec*,struct itimerspec*) ; 

int
FUNC7(struct thread *td, struct linux_timerfd_gettime_args *args)
{
	struct l_itimerspec lots;
	struct itimerspec ots;
	struct timerfd *tfd;
	struct file *fp;
	int error;

	error = FUNC2(td, args->fd, &cap_read_rights, &fp);
	if (error != 0)
		return (error);
	tfd = fp->f_data;
	if (fp->f_type != DTYPE_LINUXTFD || tfd == NULL) {
		error = EINVAL;
		goto out;
	}

	FUNC4(&tfd->tfd_lock);
	FUNC3(tfd, &ots);
	FUNC5(&tfd->tfd_lock);

	error = FUNC6(&lots, &ots);
	if (error == 0)
		error = FUNC0(&lots, args->old_value, sizeof(lots));

out:
	FUNC1(fp, td);
	return (error);
}