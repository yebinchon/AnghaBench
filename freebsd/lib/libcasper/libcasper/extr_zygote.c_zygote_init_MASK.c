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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PF_UNIX ; 
 int SOCK_NONBLOCK ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int zygote_sock ; 

int
FUNC5(void)
{
	int serrno, sp[2];
	pid_t pid;

	if (FUNC3(PF_UNIX, SOCK_STREAM | SOCK_NONBLOCK, 0, sp) == -1)
		return (-1);

	pid = FUNC2();
	switch (pid) {
	case -1:
		/* Failure. */
		serrno = errno;
		FUNC1(sp[0]);
		FUNC1(sp[1]);
		errno = serrno;
		return (-1);
	case 0:
		/* Child. */
		FUNC1(sp[0]);
		FUNC4(sp[1]);
		/* NOTREACHED */
		FUNC0();
	default:
		/* Parent. */
		zygote_sock = sp[0];
		FUNC1(sp[1]);
		return (0);
	}
	/* NOTREACHED */
}