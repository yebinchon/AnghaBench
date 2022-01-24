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
struct pidfh {int dummy; } ;
struct kevent {int dummy; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_SIGNAL ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int errno ; 
 int FUNC5 () ; 
 int FUNC6 (int,struct kevent*,int,struct kevent*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct pidfh*) ; 
 struct pidfh* FUNC10 (char const*,int,int*) ; 
 scalar_t__ FUNC11 (struct pidfh*) ; 
 scalar_t__ FUNC12 (int*) ; 
 int FUNC13 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 
 char const* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 
 int FUNC17 (int,int*,int /*<<< orphan*/ ) ; 
 int FUNC18 (int,char*,int) ; 

__attribute__((used)) static const char *
FUNC19(const char *fn, int parent_open)
{
	struct pidfh *pf = NULL;
	pid_t other = 0, pid = 0;
	int fd[2], serrno, status;
	struct kevent event, ke;
	char ch;
	int kq;

	FUNC16(fn);
	if (FUNC12(fd) != 0)
		return (FUNC15(errno));

	if (parent_open) {
		pf = FUNC10(fn, 0600, &other);
		if (pf == NULL && other != 0)
			return ("pidfile exists and is locked");
		if (pf == NULL)
			return (FUNC15(errno));
	}

	pid = FUNC5();
	if (pid == -1)
		return (FUNC15(errno));
	if (pid == 0) {
		// child
		FUNC4(fd[0]);
		FUNC14(SIGINT, signal_handler);
		if (!parent_open) {
			pf = FUNC10(fn, 0600, &other);
			if (pf == NULL && other != 0)
				return ("pidfile exists and is locked");
			if (pf == NULL)
				return (FUNC15(errno));
		}
		if (FUNC11(pf) != 0) {
			serrno = errno;
			FUNC9(pf);
			FUNC16(fn);
			return (FUNC15(serrno));
		}
		if (pf == NULL)
			FUNC3(1);
		if (FUNC11(pf) != 0)
			FUNC3(2);
		kq = FUNC8();
		if (kq == -1)
			FUNC3(3);
		FUNC0(&ke, SIGINT, EVFILT_SIGNAL, EV_ADD, 0, 0, NULL);
		/* Attach event to the kqueue. */
		if (FUNC6(kq, &ke, 1, NULL, 0, NULL) != 0)
			FUNC3(4);
		/* Inform the parent we are ready to receive SIGINT */
		if (FUNC18(fd[1], "*", 1) != 1)
			FUNC3(5);
		/* Wait for SIGINT received */
		if (FUNC6(kq, NULL, 0, &event, 1, NULL) != 1)
			FUNC3(6);
		FUNC3(0);
	}
	// parent
	FUNC4(fd[1]);
	if (pf)
		FUNC9(pf);

	// wait for the child to signal us
	if (FUNC13(fd[0], &ch, 1) != 1) {
		serrno = errno;
		FUNC16(fn);
		FUNC7(pid, SIGTERM);
		errno = serrno;
		return (FUNC15(errno));
	}

	// We shouldn't be able to lock the same pidfile as our child
	pf = FUNC10(fn, 0600, &other);
	if (pf != NULL) {
		FUNC9(pf);
		FUNC16(fn);
		return ("managed to lock contested pidfile");
	}

	// Failed to lock, but not because it was contested
	if (other == 0) {
		FUNC16(fn);
		return (FUNC15(errno));
	}

	// Locked by the wrong process
	if (other != pid) {
		FUNC16(fn);
		return ("pidfile contained wrong PID");
	}

	// check our child's fate
	if (pf)
		FUNC9(pf);
	FUNC16(fn);
	if (FUNC7(pid, SIGINT) != 0)
		return (FUNC15(errno));
	if (FUNC17(pid, &status, 0) == -1)
		return (FUNC15(errno));
	if (FUNC2(status))
		return ("child caught signal");
	if (FUNC1(status) != 0) 
		return ("child returned non-zero status");

	// success
	return (NULL);
}