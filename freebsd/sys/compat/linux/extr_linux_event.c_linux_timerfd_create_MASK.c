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
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct timerfd {int /*<<< orphan*/  tfd_lock; TYPE_2__ tfd_sel; int /*<<< orphan*/  tfd_callout; scalar_t__ tfd_clockid; } ;
struct thread {int* td_retval; TYPE_1__* td_proc; } ;
struct linux_timerfd_create_args {int flags; int /*<<< orphan*/  clockid; } ;
struct filedesc {int dummy; } ;
struct file {int dummy; } ;
typedef  scalar_t__ clockid_t ;
struct TYPE_3__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 scalar_t__ CLOCK_MONOTONIC ; 
 scalar_t__ CLOCK_REALTIME ; 
 int /*<<< orphan*/  DTYPE_LINUXTFD ; 
 int EINVAL ; 
 int FNONBLOCK ; 
 int FREAD ; 
 int LINUX_O_NONBLOCK ; 
 int LINUX_TFD_CLOEXEC ; 
 int LINUX_TFD_CREATE_FLAGS ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_EPOLL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int O_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct thread*,struct file**,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int,int /*<<< orphan*/ ,struct timerfd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (scalar_t__*,int /*<<< orphan*/ ) ; 
 struct timerfd* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timerfdops ; 

int
FUNC8(struct thread *td, struct linux_timerfd_create_args *args)
{
	struct filedesc *fdp;
	struct timerfd *tfd;
	struct file *fp;
	clockid_t clockid;
	int fflags, fd, error;

	if ((args->flags & ~LINUX_TFD_CREATE_FLAGS) != 0)
		return (EINVAL);

	error = FUNC5(&clockid, args->clockid);
	if (error != 0)
		return (error);
	if (clockid != CLOCK_REALTIME && clockid != CLOCK_MONOTONIC)
		return (EINVAL);

	fflags = 0;
	if ((args->flags & LINUX_TFD_CLOEXEC) != 0)
		fflags |= O_CLOEXEC;

	fdp = td->td_proc->p_fd;
	error = FUNC1(td, &fp, &fd, fflags);
	if (error != 0)
		return (error);

	tfd = FUNC6(sizeof(*tfd), M_EPOLL, M_WAITOK | M_ZERO);
	tfd->tfd_clockid = clockid;
	FUNC7(&tfd->tfd_lock, "timerfd", NULL, MTX_DEF);

	FUNC0(&tfd->tfd_callout, &tfd->tfd_lock, 0);
	FUNC4(&tfd->tfd_sel.si_note, &tfd->tfd_lock);

	fflags = FREAD;
	if ((args->flags & LINUX_O_NONBLOCK) != 0)
		fflags |= FNONBLOCK;

	FUNC3(fp, fflags, DTYPE_LINUXTFD, tfd, &timerfdops);
	FUNC2(fp, td);

	td->td_retval[0] = fd;
	return (error);
}