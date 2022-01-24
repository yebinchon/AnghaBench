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
struct linux_epoll_ctl_args {int op; int /*<<< orphan*/  fd; int /*<<< orphan*/  epfd; int /*<<< orphan*/  event; } ;
struct kevent_copyops {int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; struct epoll_copyin_args* member_0; } ;
struct kevent {int flags; } ;
struct file {scalar_t__ f_type; } ;
struct epoll_event {int /*<<< orphan*/  data; } ;
struct epoll_copyin_args {struct kevent* changelist; } ;
typedef  int /*<<< orphan*/  le ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_KQUEUE_CHANGE ; 
 int /*<<< orphan*/  CAP_POLL_EVENT ; 
 scalar_t__ DTYPE_KQUEUE ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int EV_ADD ; 
 int EV_ENABLE ; 
#define  LINUX_EPOLL_CTL_ADD 130 
#define  LINUX_EPOLL_CTL_DEL 129 
#define  LINUX_EPOLL_CTL_MOD 128 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct epoll_event*,int) ; 
 int FUNC2 (struct thread*,struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  epoll_kev_copyin ; 
 int FUNC4 (struct thread*,struct file*,int /*<<< orphan*/ ,struct epoll_event*,int*,struct kevent*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,struct thread*) ; 
 int FUNC6 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file**) ; 
 int FUNC7 (struct thread*,struct file*,int,int /*<<< orphan*/ ,struct kevent_copyops*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct kevent*,struct thread*,int /*<<< orphan*/ ) ; 

int
FUNC9(struct thread *td, struct linux_epoll_ctl_args *args)
{
	struct file *epfp, *fp;
	struct epoll_copyin_args ciargs;
	struct kevent kev[2];
	struct kevent_copyops k_ops = { &ciargs,
					NULL,
					epoll_kev_copyin};
	struct epoll_event le;
	cap_rights_t rights;
	int kev_flags;
	int nchanges = 0;
	int error;

	if (args->op != LINUX_EPOLL_CTL_DEL) {
		error = FUNC1(args->event, &le, sizeof(le));
		if (error != 0)
			return (error);
	}

	error = FUNC6(td, args->epfd,
	    FUNC0(&rights, CAP_KQUEUE_CHANGE), &epfp);
	if (error != 0)
		return (error);
	if (epfp->f_type != DTYPE_KQUEUE) {
		error = EINVAL;
		goto leave1;
	}

	 /* Protect user data vector from incorrectly supplied fd. */
	error = FUNC6(td, args->fd, FUNC0(&rights, CAP_POLL_EVENT), &fp);
	if (error != 0)
		goto leave1;

	/* Linux disallows spying on himself */
	if (epfp == fp) {
		error = EINVAL;
		goto leave0;
	}

	ciargs.changelist = kev;

	if (args->op != LINUX_EPOLL_CTL_DEL) {
		kev_flags = EV_ADD | EV_ENABLE;
		error = FUNC4(td, epfp, args->fd, &le,
		    &kev_flags, kev, &nchanges);
		if (error != 0)
			goto leave0;
	}

	switch (args->op) {
	case LINUX_EPOLL_CTL_MOD:
		error = FUNC2(td, epfp, args->fd);
		if (error != 0)
			goto leave0;
		break;

	case LINUX_EPOLL_CTL_ADD:
		/*
		 * kqueue_register() return ENOENT if event does not exists
		 * and the EV_ADD flag is not set.
		 */
		kev[0].flags &= ~EV_ADD;
		error = FUNC8(args->epfd, &kev[0], td, M_WAITOK);
		if (error != ENOENT) {
			error = EEXIST;
			goto leave0;
		}
		error = 0;
		kev[0].flags |= EV_ADD;
		break;

	case LINUX_EPOLL_CTL_DEL:
		/* CTL_DEL means unregister this fd with this epoll */
		error = FUNC2(td, epfp, args->fd);
		goto leave0;

	default:
		error = EINVAL;
		goto leave0;
	}

	FUNC3(td, args->fd, le.data);

	error = FUNC7(td, epfp, nchanges, 0, &k_ops, NULL);

leave0:
	FUNC5(fp, td);

leave1:
	FUNC5(epfp, td);
	return (error);
}