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
typedef  int /*<<< orphan*/  term ;
struct termios {int c_lflag; scalar_t__* c_cc; } ;
struct sigaction {int /*<<< orphan*/  sa_handler; scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  oterm ;

/* Variables and functions */
 int ECHO ; 
 int ECHONL ; 
 int EINTR ; 
 int EINVAL ; 
 int ENOTTY ; 
 int NSIG ; 
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int RPP_ECHO_ON ; 
 int RPP_FORCELOWER ; 
 int RPP_FORCEUPPER ; 
 int RPP_REQUIRE_TTY ; 
 int RPP_SEVENBIT ; 
 int RPP_STDIN ; 
 size_t SIGALRM ; 
 size_t SIGHUP ; 
 size_t SIGINT ; 
 size_t SIGPIPE ; 
 size_t SIGQUIT ; 
 size_t SIGTERM ; 
#define  SIGTSTP 130 
#define  SIGTTIN 129 
#define  SIGTTOU 128 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int TCSAFLUSH ; 
 int TCSASOFT ; 
 size_t VSTATUS ; 
 int /*<<< orphan*/  _PATH_TTY ; 
 scalar_t__ _POSIX_VDISABLE ; 
 int /*<<< orphan*/  FUNC0 (size_t,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char const*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  handler ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct termios*,struct termios*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct termios*,struct termios*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct termios*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__* signo ; 
 int FUNC12 (char const*) ; 
 scalar_t__ FUNC13 (int,struct termios*) ; 
 int FUNC14 (int,int,struct termios*) ; 
 scalar_t__ FUNC15 (unsigned char) ; 
 scalar_t__ FUNC16 (unsigned char) ; 

char *
FUNC17(const char *prompt, char *buf, size_t bufsiz, int flags)
{
	ssize_t nr;
	int input, output, save_errno, i, need_restart, input_is_tty;
	char ch, *p, *end;
	struct termios term, oterm;
	struct sigaction sa, savealrm, saveint, savehup, savequit, saveterm;
	struct sigaction savetstp, savettin, savettou, savepipe;

	/* I suppose we could alloc on demand in this case (XXX). */
	if (bufsiz == 0) {
		errno = EINVAL;
		return(NULL);
	}

restart:
	for (i = 0; i < NSIG; i++)
		signo[i] = 0;
	nr = -1;
	save_errno = 0;
	need_restart = 0;
	/*
	 * Read and write to /dev/tty if available.  If not, read from
	 * stdin and write to stderr unless a tty is required.
	 */
	input_is_tty = 0;
	if (!(flags & RPP_STDIN)) {
        	input = output = FUNC2(_PATH_TTY, O_RDWR | O_CLOEXEC);
		if (input == -1) {
			if (flags & RPP_REQUIRE_TTY) {
				errno = ENOTTY;
				return(NULL);
			}
			input = STDIN_FILENO;
			output = STDERR_FILENO;
		} else {
			input_is_tty = 1;
		}
	} else {
		input = STDIN_FILENO;
		output = STDERR_FILENO;
	}

	/*
	 * Turn off echo if possible.
	 * If we are using a tty but are not the foreground pgrp this will
	 * generate SIGTTOU, so do it *before* installing the signal handlers.
	 */
	if (input_is_tty && FUNC13(input, &oterm) == 0) {
		FUNC9(&term, &oterm, sizeof(term));
		if (!(flags & RPP_ECHO_ON))
			term.c_lflag &= ~(ECHO | ECHONL);
		if (term.c_cc[VSTATUS] != _POSIX_VDISABLE)
			term.c_cc[VSTATUS] = _POSIX_VDISABLE;
		(void)FUNC14(input, TCSAFLUSH|TCSASOFT, &term);
	} else {
		FUNC10(&term, 0, sizeof(term));
		term.c_lflag |= ECHO;
		FUNC10(&oterm, 0, sizeof(oterm));
		oterm.c_lflag |= ECHO;
	}

	/*
	 * Catch signals that would otherwise cause the user to end
	 * up with echo turned off in the shell.  Don't worry about
	 * things like SIGXCPU and SIGVTALRM for now.
	 */
	FUNC11(&sa.sa_mask);
	sa.sa_flags = 0;		/* don't restart system calls */
	sa.sa_handler = handler;
	(void)FUNC0(SIGALRM, &sa, &savealrm);
	(void)FUNC0(SIGHUP, &sa, &savehup);
	(void)FUNC0(SIGINT, &sa, &saveint);
	(void)FUNC0(SIGPIPE, &sa, &savepipe);
	(void)FUNC0(SIGQUIT, &sa, &savequit);
	(void)FUNC0(SIGTERM, &sa, &saveterm);
	(void)FUNC0(SIGTSTP, &sa, &savetstp);
	(void)FUNC0(SIGTTIN, &sa, &savettin);
	(void)FUNC0(SIGTTOU, &sa, &savettou);

	if (!(flags & RPP_STDIN))
		(void)FUNC4(output, prompt, FUNC12(prompt));
	end = buf + bufsiz - 1;
	p = buf;
	while ((nr = FUNC3(input, &ch, 1)) == 1 && ch != '\n' && ch != '\r') {
		if (p < end) {
			if ((flags & RPP_SEVENBIT))
				ch &= 0x7f;
			if (FUNC6((unsigned char)ch)) {
				if ((flags & RPP_FORCELOWER))
					ch = (char)FUNC15((unsigned char)ch);
				if ((flags & RPP_FORCEUPPER))
					ch = (char)FUNC16((unsigned char)ch);
			}
			*p++ = ch;
		}
	}
	*p = '\0';
	save_errno = errno;
	if (!(term.c_lflag & ECHO))
		(void)FUNC4(output, "\n", 1);

	/* Restore old terminal settings and signals. */
	if (FUNC8(&term, &oterm, sizeof(term)) != 0) {
		while (FUNC14(input, TCSAFLUSH|TCSASOFT, &oterm) == -1 &&
		    errno == EINTR && !signo[SIGTTOU])
			continue;
	}
	(void)FUNC0(SIGALRM, &savealrm, NULL);
	(void)FUNC0(SIGHUP, &savehup, NULL);
	(void)FUNC0(SIGINT, &saveint, NULL);
	(void)FUNC0(SIGQUIT, &savequit, NULL);
	(void)FUNC0(SIGPIPE, &savepipe, NULL);
	(void)FUNC0(SIGTERM, &saveterm, NULL);
	(void)FUNC0(SIGTSTP, &savetstp, NULL);
	(void)FUNC0(SIGTTIN, &savettin, NULL);
	(void)FUNC0(SIGTTOU, &savettou, NULL);
	if (input_is_tty)
		(void)FUNC1(input);

	/*
	 * If we were interrupted by a signal, resend it to ourselves
	 * now that we have restored the signal handlers.
	 */
	for (i = 0; i < NSIG; i++) {
		if (signo[i]) {
			FUNC7(FUNC5(), i);
			switch (i) {
			case SIGTSTP:
			case SIGTTIN:
			case SIGTTOU:
				need_restart = 1;
			}
		}
	}
	if (need_restart)
		goto restart;

	if (save_errno)
		errno = save_errno;
	return(nr == -1 ? NULL : buf);
}