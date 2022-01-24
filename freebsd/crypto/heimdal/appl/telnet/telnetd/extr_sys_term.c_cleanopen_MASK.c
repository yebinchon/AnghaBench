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
 int O_NOCTTY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  TCVHUP ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*,int) ; 
 int ptyslavefd ; 
 int /*<<< orphan*/  really_stream ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(char *line)
{
    int t;

    if (ptyslavefd != -1)
	return ptyslavefd;

#ifdef STREAMSPTY
    if (!really_stream)
#endif
	{
	    /*
	     * Make sure that other people can't open the
	     * slave side of the connection.
	     */
	    FUNC1(line, 0, 0);
	    FUNC0(line, 0600);
	}

#ifdef HAVE_REVOKE
    revoke(line);
#endif

    t = FUNC4(line, O_RDWR|O_NOCTTY);

    if (t < 0)
	return(-1);

    /*
     * Hangup anybody else using this ttyp, then reopen it for
     * ourselves.
     */
# if !(defined(_CRAY) || defined(__hpux)) && (BSD <= 43) && !defined(STREAMSPTY)
    FUNC6(SIGHUP, SIG_IGN);
#ifdef HAVE_VHANGUP
    vhangup();
#else
#endif
    FUNC6(SIGHUP, SIG_DFL);
    t = FUNC4(line, O_RDWR|O_NOCTTY);
    if (t < 0)
	return(-1);
# endif
# if	defined(_CRAY) && defined(TCVHUP)
    {
	int i;
	signal(SIGHUP, SIG_IGN);
	ioctl(t, TCVHUP, (char *)0);
	signal(SIGHUP, SIG_DFL);

	i = open(line, O_RDWR);

	if (i < 0)
	    return(-1);
	close(t);
	t = i;
    }
# endif	/* defined(CRAY) && defined(TCVHUP) */
    return(t);
}