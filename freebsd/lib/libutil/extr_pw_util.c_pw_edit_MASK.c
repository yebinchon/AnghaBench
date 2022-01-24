#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct stat {TYPE_1__ st_mtim; } ;
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  WUNTRACED ; 
 char* _PATH_VI ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int editpid ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 () ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  tempname ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int,int*,int /*<<< orphan*/ ) ; 

int
FUNC20(int notsetuid)
{
	struct sigaction sa, sa_int, sa_quit;
	sigset_t oldsigset, nsigset;
	struct stat st1, st2;
	const char *editor;
	int pstat;

	if ((editor = FUNC7("EDITOR")) == NULL)
		editor = _PATH_VI;
	if (FUNC17(tempname, &st1) == -1)
		return (-1);
	sa.sa_handler = SIG_IGN;
	FUNC15(&sa.sa_mask);
	sa.sa_flags = 0;
	FUNC13(SIGINT, &sa, &sa_int);
	FUNC13(SIGQUIT, &sa, &sa_quit);
	FUNC15(&nsigset);
	FUNC14(&nsigset, SIGCHLD);
	FUNC16(SIG_BLOCK, &nsigset, &oldsigset);
	switch ((editpid = FUNC6())) {
	case -1:
		return (-1);
	case 0:
		FUNC13(SIGINT, &sa_int, NULL);
		FUNC13(SIGQUIT, &sa_quit, NULL);
		FUNC16(SIG_SETMASK, &oldsigset, NULL);
		if (notsetuid) {
			(void)FUNC11(FUNC8());
			(void)FUNC12(FUNC9());
		}
		errno = 0;
		FUNC5(editor, editor, tempname, (char *)NULL);
		FUNC4(errno);
	default:
		/* parent */
		break;
	}
	for (;;) {
		if (FUNC19(editpid, &pstat, WUNTRACED) == -1) {
			if (errno == EINTR)
				continue;
			FUNC18(tempname);
			editpid = -1;
			break;
		} else if (FUNC2(pstat)) {
			FUNC10(FUNC3(pstat));
		} else if (FUNC1(pstat) && FUNC0(pstat) == 0) {
			editpid = -1;
			break;
		} else {
			FUNC18(tempname);
			editpid = -1;
			break;
		}
	}
	FUNC13(SIGINT, &sa_int, NULL);
	FUNC13(SIGQUIT, &sa_quit, NULL);
	FUNC16(SIG_SETMASK, &oldsigset, NULL);
	if (FUNC17(tempname, &st2) == -1)
		return (-1);
	return (st1.st_mtim.tv_sec != st2.st_mtim.tv_sec ||
	    st1.st_mtim.tv_nsec != st2.st_mtim.tv_nsec);
}