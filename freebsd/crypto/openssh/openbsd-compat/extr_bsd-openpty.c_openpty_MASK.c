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
typedef  int /*<<< orphan*/  ttbuf ;
struct winsize {int dummy; } ;
struct termios {int c_lflag; int c_oflag; int /*<<< orphan*/  c_iflag; } ;
typedef  int /*<<< orphan*/  ptbuf ;
typedef  int /*<<< orphan*/  mysig_t ;

/* Variables and functions */
 int ECHO ; 
 int ICANON ; 
 int /*<<< orphan*/  ICRNL ; 
 int ISIG ; 
 int /*<<< orphan*/  I_PUSH ; 
 int ONLCR ; 
 int OPOST ; 
 int O_NOCTTY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  TCSANOW ; 
 char* FUNC0 (int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char const*,int) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const,...) ; 
 int FUNC8 (char const*) ; 
 int FUNC9 (int,struct termios*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,struct termios*) ; 
 char* FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 

int
FUNC13(int *amaster, int *aslave, char *name, struct termios *termp,
   struct winsize *winp)
{
#if defined(HAVE__GETPTY)
	/*
	 * _getpty(3) exists in SGI Irix 4.x, 5.x & 6.x -- it generates more
	 * pty's automagically when needed
	 */
	char *slave;

	if ((slave = _getpty(amaster, O_RDWR, 0622, 0)) == NULL)
		return (-1);

	/* Open the slave side. */
	if ((*aslave = open(slave, O_RDWR | O_NOCTTY)) == -1) {
		close(*amaster);
		return (-1);
	}
	return (0);

#elif defined(HAVE_DEV_PTMX)
	/*
	 * This code is used e.g. on Solaris 2.x.  (Note that Solaris 2.3
	 * also has bsd-style ptys, but they simply do not work.)
	 */
	int ptm;
	char *pts;
	mysig_t old_signal;

	if ((ptm = open("/dev/ptmx", O_RDWR | O_NOCTTY)) == -1)
		return (-1);

	/* XXX: need to close ptm on error? */
	old_signal = signal(SIGCHLD, SIG_DFL);
	if (grantpt(ptm) < 0)
		return (-1);
	signal(SIGCHLD, old_signal);

	if (unlockpt(ptm) < 0)
		return (-1);

	if ((pts = ptsname(ptm)) == NULL)
		return (-1);
	*amaster = ptm;

	/* Open the slave side. */
	if ((*aslave = open(pts, O_RDWR | O_NOCTTY)) == -1) {
		close(*amaster);
		return (-1);
	}

	/*
	 * Try to push the appropriate streams modules, as described
	 * in Solaris pts(7).
	 */
	ioctl(*aslave, I_PUSH, "ptem");
	ioctl(*aslave, I_PUSH, "ldterm");
# ifndef __hpux
	ioctl(*aslave, I_PUSH, "ttcompat");
# endif /* __hpux */

	return (0);

#elif defined(HAVE_DEV_PTS_AND_PTC)
	/* AIX-style pty code. */
	const char *ttname;

	if ((*amaster = open("/dev/ptc", O_RDWR | O_NOCTTY)) == -1)
		return (-1);
	if ((ttname = ttyname(*amaster)) == NULL)
		return (-1);
	if ((*aslave = open(ttname, O_RDWR | O_NOCTTY)) == -1) {
		close(*amaster);
		return (-1);
	}
	return (0);

#else
	/* BSD-style pty code. */
	char ptbuf[64], ttbuf[64];
	int i;
	const char *ptymajors = "pqrstuvwxyzabcdefghijklmno"
	    "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	const char *ptyminors = "0123456789abcdef";
	int num_minors = FUNC8(ptyminors);
	int num_ptys = FUNC8(ptymajors) * num_minors;
	struct termios tio;

	for (i = 0; i < num_ptys; i++) {
		FUNC7(ptbuf, sizeof(ptbuf), "/dev/pty%c%c",
		    ptymajors[i / num_minors], ptyminors[i % num_minors]);
		FUNC7(ttbuf, sizeof(ttbuf), "/dev/tty%c%c",
		    ptymajors[i / num_minors], ptyminors[i % num_minors]);

		if ((*amaster = FUNC4(ptbuf, O_RDWR | O_NOCTTY)) == -1) {
			/* Try SCO style naming */
			FUNC7(ptbuf, sizeof(ptbuf), "/dev/ptyp%d", i);
			FUNC7(ttbuf, sizeof(ttbuf), "/dev/ttyp%d", i);
			if ((*amaster = FUNC4(ptbuf, O_RDWR | O_NOCTTY)) == -1)
				continue;
		}

		/* Open the slave side. */
		if ((*aslave = FUNC4(ttbuf, O_RDWR | O_NOCTTY)) == -1) {
			FUNC1(*amaster);
			return (-1);
		}
		/* set tty modes to a sane state for broken clients */
		if (FUNC9(*amaster, &tio) != -1) {
			tio.c_lflag |= (ECHO | ISIG | ICANON);
			tio.c_oflag |= (OPOST | ONLCR);
			tio.c_iflag |= ICRNL;
			FUNC10(*amaster, TCSANOW, &tio);
		}

		return (0);
	}
	return (-1);
#endif
}