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
struct thread {int* td_retval; } ;
struct linux_fcntl_args {int cmd; intptr_t arg; int /*<<< orphan*/  fd; } ;
struct l_flock {int dummy; } ;
struct flock {int dummy; } ;
struct file {int /*<<< orphan*/  f_type; } ;
typedef  int /*<<< orphan*/  linux_flock ;

/* Variables and functions */
 int /*<<< orphan*/  DTYPE_PIPE ; 
 int EINVAL ; 
 int /*<<< orphan*/  F_DUPFD ; 
 int /*<<< orphan*/  F_DUPFD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_GETLK ; 
 int /*<<< orphan*/  F_GETOWN ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  F_SETLK ; 
 int /*<<< orphan*/  F_SETLKW ; 
 int /*<<< orphan*/  F_SETOWN ; 
 int LINUX_FASYNC ; 
#define  LINUX_F_DUPFD 138 
#define  LINUX_F_DUPFD_CLOEXEC 137 
#define  LINUX_F_GETFD 136 
#define  LINUX_F_GETFL 135 
#define  LINUX_F_GETLK 134 
#define  LINUX_F_GETOWN 133 
#define  LINUX_F_SETFD 132 
#define  LINUX_F_SETFL 131 
#define  LINUX_F_SETLK 130 
#define  LINUX_F_SETLKW 129 
#define  LINUX_F_SETOWN 128 
 int LINUX_O_APPEND ; 
 int LINUX_O_DIRECT ; 
 int LINUX_O_NDELAY ; 
 int LINUX_O_NOFOLLOW ; 
 int LINUX_O_NONBLOCK ; 
 int LINUX_O_RDONLY ; 
 int LINUX_O_RDWR ; 
 int LINUX_O_SYNC ; 
 int LINUX_O_WRONLY ; 
 int O_APPEND ; 
 int O_ASYNC ; 
 int O_DIRECT ; 
 int O_FSYNC ; 
 int O_NDELAY ; 
 int O_NOFOLLOW ; 
 long O_NONBLOCK ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (struct flock*,struct l_flock*) ; 
 int /*<<< orphan*/  cap_fcntl_rights ; 
 int FUNC1 (void*,struct l_flock*,int) ; 
 int FUNC2 (struct l_flock*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC5 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/  FUNC6 (struct l_flock*,struct flock*) ; 

__attribute__((used)) static int
FUNC7(struct thread *td, struct linux_fcntl_args *args)
{
	struct l_flock linux_flock;
	struct flock bsd_flock;
	struct file *fp;
	long arg;
	int error, result;

	switch (args->cmd) {
	case LINUX_F_DUPFD:
		return (FUNC5(td, args->fd, F_DUPFD, args->arg));

	case LINUX_F_GETFD:
		return (FUNC5(td, args->fd, F_GETFD, 0));

	case LINUX_F_SETFD:
		return (FUNC5(td, args->fd, F_SETFD, args->arg));

	case LINUX_F_GETFL:
		error = FUNC5(td, args->fd, F_GETFL, 0);
		result = td->td_retval[0];
		td->td_retval[0] = 0;
		if (result & O_RDONLY)
			td->td_retval[0] |= LINUX_O_RDONLY;
		if (result & O_WRONLY)
			td->td_retval[0] |= LINUX_O_WRONLY;
		if (result & O_RDWR)
			td->td_retval[0] |= LINUX_O_RDWR;
		if (result & O_NDELAY)
			td->td_retval[0] |= LINUX_O_NONBLOCK;
		if (result & O_APPEND)
			td->td_retval[0] |= LINUX_O_APPEND;
		if (result & O_FSYNC)
			td->td_retval[0] |= LINUX_O_SYNC;
		if (result & O_ASYNC)
			td->td_retval[0] |= LINUX_FASYNC;
#ifdef LINUX_O_NOFOLLOW
		if (result & O_NOFOLLOW)
			td->td_retval[0] |= LINUX_O_NOFOLLOW;
#endif
#ifdef LINUX_O_DIRECT
		if (result & O_DIRECT)
			td->td_retval[0] |= LINUX_O_DIRECT;
#endif
		return (error);

	case LINUX_F_SETFL:
		arg = 0;
		if (args->arg & LINUX_O_NDELAY)
			arg |= O_NONBLOCK;
		if (args->arg & LINUX_O_APPEND)
			arg |= O_APPEND;
		if (args->arg & LINUX_O_SYNC)
			arg |= O_FSYNC;
		if (args->arg & LINUX_FASYNC)
			arg |= O_ASYNC;
#ifdef LINUX_O_NOFOLLOW
		if (args->arg & LINUX_O_NOFOLLOW)
			arg |= O_NOFOLLOW;
#endif
#ifdef LINUX_O_DIRECT
		if (args->arg & LINUX_O_DIRECT)
			arg |= O_DIRECT;
#endif
		return (FUNC5(td, args->fd, F_SETFL, arg));

	case LINUX_F_GETLK:
		error = FUNC1((void *)args->arg, &linux_flock,
		    sizeof(linux_flock));
		if (error)
			return (error);
		FUNC6(&linux_flock, &bsd_flock);
		error = FUNC5(td, args->fd, F_GETLK, (intptr_t)&bsd_flock);
		if (error)
			return (error);
		FUNC0(&bsd_flock, &linux_flock);
		return (FUNC2(&linux_flock, (void *)args->arg,
		    sizeof(linux_flock)));

	case LINUX_F_SETLK:
		error = FUNC1((void *)args->arg, &linux_flock,
		    sizeof(linux_flock));
		if (error)
			return (error);
		FUNC6(&linux_flock, &bsd_flock);
		return (FUNC5(td, args->fd, F_SETLK,
		    (intptr_t)&bsd_flock));

	case LINUX_F_SETLKW:
		error = FUNC1((void *)args->arg, &linux_flock,
		    sizeof(linux_flock));
		if (error)
			return (error);
		FUNC6(&linux_flock, &bsd_flock);
		return (FUNC5(td, args->fd, F_SETLKW,
		     (intptr_t)&bsd_flock));

	case LINUX_F_GETOWN:
		return (FUNC5(td, args->fd, F_GETOWN, 0));

	case LINUX_F_SETOWN:
		/*
		 * XXX some Linux applications depend on F_SETOWN having no
		 * significant effect for pipes (SIGIO is not delivered for
		 * pipes under Linux-2.2.35 at least).
		 */
		error = FUNC4(td, args->fd,
		    &cap_fcntl_rights, &fp);
		if (error)
			return (error);
		if (fp->f_type == DTYPE_PIPE) {
			FUNC3(fp, td);
			return (EINVAL);
		}
		FUNC3(fp, td);

		return (FUNC5(td, args->fd, F_SETOWN, args->arg));

	case LINUX_F_DUPFD_CLOEXEC:
		return (FUNC5(td, args->fd, F_DUPFD_CLOEXEC, args->arg));
	}

	return (EINVAL);
}