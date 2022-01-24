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
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  InChannel ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int LogLevel ; 
 int /*<<< orphan*/  NOQID ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  OutChannel ; 
 int /*<<< orphan*/  SM_IO_WHAT_FD ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  smioout ; 
 scalar_t__ FUNC8 (int,int) ; 

__attribute__((used)) static void
FUNC9()
{
	int inchfd, outchfd, outfd;

	inchfd = FUNC6(InChannel, SM_IO_WHAT_FD, NULL);
	outchfd  = FUNC6(OutChannel, SM_IO_WHAT_FD, NULL);
	outfd = FUNC6(smioout, SM_IO_WHAT_FD, NULL);
	if (outchfd != outfd)
	{
		/* arrange for debugging output to go to remote host */
		(void) FUNC1(outchfd, outfd);
	}

	/*
	**  if InChannel and OutChannel are stdin/stdout
	**  and connected to ttys
	**  and fcntl(STDIN, F_SETFL, O_NONBLOCKING) also changes STDOUT,
	**  then "chain" them together.
	*/

	if (inchfd == STDIN_FILENO && outchfd == STDOUT_FILENO &&
	    FUNC3(inchfd) && FUNC3(outchfd))
	{
		int inmode, outmode;

		inmode = FUNC2(inchfd, F_GETFL, 0);
		if (inmode == -1)
		{
			if (LogLevel > 11)
				FUNC7(LOG_INFO, NOQID,
					"fcntl(inchfd, F_GETFL) failed: %s",
					FUNC4(errno));
			return;
		}
		outmode = FUNC2(outchfd, F_GETFL, 0);
		if (outmode == -1)
		{
			if (LogLevel > 11)
				FUNC7(LOG_INFO, NOQID,
					"fcntl(outchfd, F_GETFL) failed: %s",
					FUNC4(errno));
			return;
		}
		if (FUNC0(O_NONBLOCK, inmode) ||
		    FUNC0(O_NONBLOCK, outmode) ||
		    FUNC2(inchfd, F_SETFL, inmode | O_NONBLOCK) == -1)
			return;
		outmode = FUNC2(outchfd, F_GETFL, 0);
		if (outmode != -1 && FUNC0(O_NONBLOCK, outmode))
		{
			/* changing InChannel also changes OutChannel */
			FUNC5(OutChannel, InChannel);
			if (FUNC8(97, 4) && LogLevel > 9)
				FUNC7(LOG_INFO, NOQID,
					  "set automode for I (%d)/O (%d) in SMTP server",
					  inchfd, outchfd);
		}

		/* undo change of inchfd */
		(void) FUNC2(inchfd, F_SETFL, inmode);
	}
}