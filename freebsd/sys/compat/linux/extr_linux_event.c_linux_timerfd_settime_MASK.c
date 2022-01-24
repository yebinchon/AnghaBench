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
struct timeval {int dummy; } ;
struct timespec {int dummy; } ;
struct itimerspec {struct timespec it_value; int /*<<< orphan*/  it_interval; } ;
struct timerfd {int tfd_canceled; int /*<<< orphan*/  tfd_lock; int /*<<< orphan*/  tfd_callout; struct itimerspec tfd_time; } ;
struct thread {int dummy; } ;
struct linux_timerfd_settime_args {int flags; int /*<<< orphan*/ * old_value; int /*<<< orphan*/  fd; int /*<<< orphan*/  new_value; } ;
struct l_itimerspec {int dummy; } ;
struct file {scalar_t__ f_type; struct timerfd* f_data; } ;
typedef  int /*<<< orphan*/  lots ;

/* Variables and functions */
 scalar_t__ DTYPE_LINUXTFD ; 
 int EINVAL ; 
 int LINUX_TFD_SETTIME_FLAGS ; 
 int LINUX_TFD_TIMER_ABSTIME ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timerfd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cap_write_rights ; 
 int FUNC3 (int /*<<< orphan*/ ,struct l_itimerspec*,int) ; 
 int FUNC4 (struct l_itimerspec*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,struct thread*) ; 
 int FUNC6 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file**) ; 
 int /*<<< orphan*/  FUNC7 (struct timerfd*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC8 (struct timerfd*,struct itimerspec*) ; 
 int /*<<< orphan*/  linux_timerfd_expire ; 
 int FUNC9 (struct itimerspec*,struct l_itimerspec*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct l_itimerspec*,struct itimerspec*) ; 
 int /*<<< orphan*/  FUNC13 (struct timespec*,struct timespec*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC16 (struct timespec*,struct timespec*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC17 (struct timeval*) ; 

int
FUNC18(struct thread *td, struct linux_timerfd_settime_args *args)
{
	struct l_itimerspec lots;
	struct itimerspec nts, ots;
	struct timespec cts, ts;
	struct timerfd *tfd;
	struct timeval tv;
	struct file *fp;
	int error;

	if ((args->flags & ~LINUX_TFD_SETTIME_FLAGS) != 0)
		return (EINVAL);

	error = FUNC3(args->new_value, &lots, sizeof(lots));
	if (error != 0)
		return (error);
	error = FUNC9(&nts, &lots);
	if (error != 0)
		return (error);

	error = FUNC6(td, args->fd, &cap_write_rights, &fp);
	if (error != 0)
		return (error);
	tfd = fp->f_data;
	if (fp->f_type != DTYPE_LINUXTFD || tfd == NULL) {
		error = EINVAL;
		goto out;
	}

	FUNC10(&tfd->tfd_lock);
	if (!FUNC15(&nts.it_value))
		FUNC14(&nts.it_interval);
	if (args->old_value != NULL)
		FUNC8(tfd, &ots);

	tfd->tfd_time = nts;
	if (FUNC15(&nts.it_value)) {
		FUNC7(tfd, &cts);
		ts = nts.it_value;
		if ((args->flags & LINUX_TFD_TIMER_ABSTIME) == 0) {
			FUNC13(&tfd->tfd_time.it_value, &cts,
				&tfd->tfd_time.it_value);
		} else {
			FUNC16(&ts, &cts, &ts);
		}
		FUNC0(&tv, &ts);
		FUNC1(&tfd->tfd_callout, FUNC17(&tv),
			linux_timerfd_expire, tfd);
		tfd->tfd_canceled = false;
	} else {
		tfd->tfd_canceled = true;
		FUNC2(&tfd->tfd_callout);
	}
	FUNC11(&tfd->tfd_lock);

	if (args->old_value != NULL) {
		error = FUNC12(&lots, &ots);
		if (error == 0)
			error = FUNC4(&lots, args->old_value, sizeof(lots));
	}

out:
	FUNC5(fp, td);
	return (error);
}