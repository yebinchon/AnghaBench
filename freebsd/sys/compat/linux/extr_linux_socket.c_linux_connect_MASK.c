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
struct thread {int dummy; } ;
struct socket {int so_error; void* so_emuldata; } ;
struct sockaddr {int dummy; } ;
struct linux_connect_args {int /*<<< orphan*/  s; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
struct file {struct socket* f_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int EISCONN ; 
 int FNONBLOCK ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  cap_connect_rights ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file**,int*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct sockaddr**,int /*<<< orphan*/ *) ; 

int
FUNC8(struct thread *td, struct linux_connect_args *args)
{
	struct socket *so;
	struct sockaddr *sa;
	struct file *fp;
	u_int fflag;
	int error;

	error = FUNC7(FUNC0(args->name), &sa,
	    &args->namelen);
	if (error != 0)
		return (error);

	error = FUNC6(td, AT_FDCWD, args->s, sa);
	FUNC4(sa, M_SONAME);
	if (error != EISCONN)
		return (error);

	/*
	 * Linux doesn't return EISCONN the first time it occurs,
	 * when on a non-blocking socket. Instead it returns the
	 * error getsockopt(SOL_SOCKET, SO_ERROR) would return on BSD.
	 */
	error = FUNC5(td, args->s, &cap_connect_rights,
	    &fp, &fflag, NULL);
	if (error != 0)
		return (error);

	error = EISCONN;
	so = fp->f_data;
	if (fflag & FNONBLOCK) {
		FUNC1(so);
		if (so->so_emuldata == 0)
			error = so->so_error;
		so->so_emuldata = (void *)1;
		FUNC2(so);
	}
	FUNC3(fp, td);

	return (error);
}