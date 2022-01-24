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

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  TIOCSCTTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,char*) ; 
 char* line ; 
 int /*<<< orphan*/  net ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  really_stream ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(int t)
{
    /* Dont need to set this as the controlling PTY on steams sockets,
     * don't abort on failure. */
# if defined(TIOCSCTTY) && !defined(__hpux)
    if (ioctl(t, TIOCSCTTY, (char *)0) < 0 && !really_stream)
	fatalperror(net, "ioctl(sctty)");
#  ifdef _CRAY
    /*
     * Close the hard fd to /dev/ttypXXX, and re-open through
     * the indirect /dev/tty interface.
     */
    close(t);
    if ((t = open("/dev/tty", O_RDWR)) < 0)
	fatalperror(net, "open(/dev/tty)");
#  endif
# else
    /*
     * We get our controlling tty assigned as a side-effect
     * of opening up a tty device.  But on BSD based systems,
     * this only happens if our process group is zero.  The
     * setsid() call above may have set our pgrp, so clear
     * it out before opening the tty...
     */
#ifdef HAVE_SETPGID
    setpgid(0, 0);
#else
    FUNC6(0, 0); /* if setpgid isn't available, setpgrp
		      probably takes arguments */
#endif
    FUNC0(FUNC4(line, O_RDWR));
# endif
    if (t != 0)
	FUNC1(t, 0);
    if (t != 1)
	FUNC1(t, 1);
    if (t != 2)
	FUNC1(t, 2);
    if (t > 2)
	FUNC0(t);
    return(0);
}