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
struct timespec {int member_1; int /*<<< orphan*/  member_0; } ;
struct tag_files {char* tfn; char* tagname; char* ofn; int tfd; int /*<<< orphan*/  ofd; int /*<<< orphan*/  pager_pid; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  MANDOCERR_DUP ; 
 int /*<<< orphan*/  MANDOCERR_EXEC ; 
 int /*<<< orphan*/  MANDOCERR_FORK ; 
 int /*<<< orphan*/  MANDOCERR_PLEDGE ; 
 int MAX_PAGER_ARGS ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (char*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 char* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct timespec const*,int /*<<< orphan*/ *) ; 
 int FUNC13 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC15 (char*,char) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 size_t FUNC18 (char*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static pid_t
FUNC21(struct tag_files *tag_files)
{
	const struct timespec timeout = { 0, 100000000 };  /* 0.1s */
#define MAX_PAGER_ARGS 16
	char		*argv[MAX_PAGER_ARGS];
	const char	*pager;
	char		*cp;
#if HAVE_LESS_T
	size_t		 cmdlen;
#endif
	int		 argc, use_ofn;
	pid_t		 pager_pid;

	pager = FUNC7("MANPAGER");
	if (pager == NULL || *pager == '\0')
		pager = FUNC7("PAGER");
	if (pager == NULL || *pager == '\0')
		pager = "less -s";
	cp = FUNC11(pager);

	/*
	 * Parse the pager command into words.
	 * Intentionally do not do anything fancy here.
	 */

	argc = 0;
	while (argc + 5 < MAX_PAGER_ARGS) {
		argv[argc++] = cp;
		cp = FUNC15(cp, ' ');
		if (cp == NULL)
			break;
		*cp++ = '\0';
		while (*cp == ' ')
			cp++;
		if (*cp == '\0')
			break;
	}

	/* For less(1), use the tag file. */

	use_ofn = 1;
#if HAVE_LESS_T
	if (*tag_files->tfn != '\0' && (cmdlen = strlen(argv[0])) >= 4) {
		cp = argv[0] + cmdlen - 4;
		if (strcmp(cp, "less") == 0) {
			argv[argc++] = mandoc_strdup("-T");
			argv[argc++] = tag_files->tfn;
			if (tag_files->tagname != NULL) {
				argv[argc++] = mandoc_strdup("-t");
				argv[argc++] = tag_files->tagname;
				use_ofn = 0;
			}
		}
	}
#endif
	if (use_ofn)
		argv[argc++] = tag_files->ofn;
	argv[argc] = NULL;

	switch (pager_pid = FUNC6()) {
	case -1:
		FUNC9(MANDOCERR_FORK, 0, 0, "%s", FUNC17(errno));
		FUNC5(FUNC10());
	case 0:
		break;
	default:
		(void)FUNC14(pager_pid, 0);
		(void)FUNC20(tag_files->ofd, pager_pid);
#if HAVE_PLEDGE
		if (pledge("stdio rpath tmppath tty proc", NULL) == -1) {
			mandoc_msg(MANDOCERR_PLEDGE, 0, 0,
			    "%s", strerror(errno));
			exit(mandoc_msg_getrc());
		}
#endif
		tag_files->pager_pid = pager_pid;
		return pager_pid;
	}

	/* The child process becomes the pager. */

	if (FUNC3(tag_files->ofd, STDOUT_FILENO) == -1) {
		FUNC9(MANDOCERR_DUP, 0, 0, "%s", FUNC17(errno));
		FUNC0(FUNC10());
	}
	FUNC2(tag_files->ofd);
	FUNC1(tag_files->tfd == -1);

	/* Do not start the pager before controlling the terminal. */

	while (FUNC19(STDOUT_FILENO) != FUNC8())
		FUNC12(&timeout, NULL);

	FUNC4(argv[0], argv);
	FUNC9(MANDOCERR_EXEC, 0, 0, "%s: %s", argv[0], FUNC17(errno));
	FUNC0(FUNC10());
}