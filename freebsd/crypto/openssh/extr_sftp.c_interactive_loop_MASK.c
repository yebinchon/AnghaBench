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
typedef  char sftp_conn ;
struct complete_ctx {char* conn; char** remote_pathp; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  History ;
typedef  int /*<<< orphan*/  HistEvent ;
typedef  int /*<<< orphan*/  EditLine ;

/* Variables and functions */
 int /*<<< orphan*/  EL_ADDFN ; 
 int /*<<< orphan*/  EL_BIND ; 
 int /*<<< orphan*/  EL_CLIENTDATA ; 
 int /*<<< orphan*/  EL_EDITOR ; 
 int /*<<< orphan*/  EL_HIST ; 
 int /*<<< orphan*/  EL_PROMPT ; 
 int /*<<< orphan*/  EL_SIGNAL ; 
 int /*<<< orphan*/  EL_TERMINAL ; 
 int /*<<< orphan*/  H_ENTER ; 
 int /*<<< orphan*/  H_SETSIZE ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  _IOLBF ; 
 int batchmode ; 
 int /*<<< orphan*/  cmd_interrupt ; 
 int /*<<< orphan*/ * complete ; 
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ global_aflag ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  infile ; 
 scalar_t__ interrupted ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (char*,char*,char**,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  prompt ; 
 int /*<<< orphan*/  quiet ; 
 scalar_t__ FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC21 (char*,char const*,int) ; 
 int FUNC22 (char*) ; 
 char* FUNC23 (char*,char) ; 
 char* FUNC24 (char*) ; 

__attribute__((used)) static int
FUNC25(struct sftp_conn *conn, char *file1, char *file2)
{
	char *remote_path;
	char *dir = NULL, *startdir = NULL;
	char cmd[2048];
	int err, interactive;
	EditLine *el = NULL;
#ifdef USE_LIBEDIT
	History *hl = NULL;
	HistEvent hev;
	extern char *__progname;
	struct complete_ctx complete_ctx;

	if (!batchmode && isatty(STDIN_FILENO)) {
		if ((el = el_init(__progname, stdin, stdout, stderr)) == NULL)
			fatal("Couldn't initialise editline");
		if ((hl = history_init()) == NULL)
			fatal("Couldn't initialise editline history");
		history(hl, &hev, H_SETSIZE, 100);
		el_set(el, EL_HIST, history, hl);

		el_set(el, EL_PROMPT, prompt);
		el_set(el, EL_EDITOR, "emacs");
		el_set(el, EL_TERMINAL, NULL);
		el_set(el, EL_SIGNAL, 1);
		el_source(el, NULL);

		/* Tab Completion */
		el_set(el, EL_ADDFN, "ftp-complete",
		    "Context sensitive argument completion", complete);
		complete_ctx.conn = conn;
		complete_ctx.remote_pathp = &remote_path;
		el_set(el, EL_CLIENTDATA, (void*)&complete_ctx);
		el_set(el, EL_BIND, "^I", "ftp-complete", NULL);
		/* enable ctrl-left-arrow and ctrl-right-arrow */
		el_set(el, EL_BIND, "\\e[1;5C", "em-next-word", NULL);
		el_set(el, EL_BIND, "\\e[5C", "em-next-word", NULL);
		el_set(el, EL_BIND, "\\e[1;5D", "ed-prev-word", NULL);
		el_set(el, EL_BIND, "\\e\\e[D", "ed-prev-word", NULL);
		/* make ^w match ksh behaviour */
		el_set(el, EL_BIND, "^w", "ed-delete-prev-word", NULL);
	}
#endif /* USE_LIBEDIT */

	remote_path = FUNC0(conn, ".");
	if (remote_path == NULL)
		FUNC6("Need cwd");
	startdir = FUNC24(remote_path);

	if (file1 != NULL) {
		dir = FUNC24(file1);
		dir = FUNC13(dir, remote_path);

		if (FUNC17(conn, dir) && file2 == NULL) {
			if (!quiet)
				FUNC14("Changing to: %s\n", dir);
			FUNC20(cmd, sizeof cmd, "cd \"%s\"", dir);
			if (FUNC15(conn, cmd,
			    &remote_path, startdir, 1) != 0) {
				FUNC9(dir);
				FUNC9(startdir);
				FUNC9(remote_path);
				FUNC9(conn);
				return (-1);
			}
		} else {
			/* XXX this is wrong wrt quoting */
			FUNC20(cmd, sizeof cmd, "get%s %s%s%s",
			    global_aflag ? " -a" : "", dir,
			    file2 == NULL ? "" : " ",
			    file2 == NULL ? "" : file2);
			err = FUNC15(conn, cmd,
			    &remote_path, startdir, 1);
			FUNC9(dir);
			FUNC9(startdir);
			FUNC9(remote_path);
			FUNC9(conn);
			return (err);
		}
		FUNC9(dir);
	}

	FUNC18(stdout, NULL, _IOLBF, 0);
	FUNC18(infile, NULL, _IOLBF, 0);

	interactive = !batchmode && FUNC12(STDIN_FILENO);
	err = 0;
	for (;;) {
		char *cp;

		FUNC19(SIGINT, SIG_IGN);

		if (el == NULL) {
			if (interactive)
				FUNC16("sftp> ");
			if (FUNC7(cmd, sizeof(cmd), infile) == NULL) {
				if (interactive)
					FUNC16("\n");
				break;
			}
			if (!interactive) { /* Echo command */
				FUNC14("sftp> %s", cmd);
				if (FUNC22(cmd) > 0 &&
				    cmd[FUNC22(cmd) - 1] != '\n')
					FUNC16("\n");
			}
		} else {
#ifdef USE_LIBEDIT
			const char *line;
			int count = 0;

			if ((line = el_gets(el, &count)) == NULL ||
			    count <= 0) {
				printf("\n");
 				break;
			}
			history(hl, &hev, H_ENTER, line);
			if (strlcpy(cmd, line, sizeof(cmd)) >= sizeof(cmd)) {
				fprintf(stderr, "Error: input line too long\n");
				continue;
			}
#endif /* USE_LIBEDIT */
		}

		cp = FUNC23(cmd, '\n');
		if (cp)
			*cp = '\0';

		/* Handle user interrupts gracefully during commands */
		interrupted = 0;
		FUNC19(SIGINT, cmd_interrupt);

		err = FUNC15(conn, cmd, &remote_path,
		    startdir, batchmode);
		if (err != 0)
			break;
	}
	FUNC19(SIGCHLD, SIG_DFL);
	FUNC9(remote_path);
	FUNC9(startdir);
	FUNC9(conn);

#ifdef USE_LIBEDIT
	if (el != NULL)
		el_end(el);
#endif /* USE_LIBEDIT */

	/* err == 1 signifies normal "quit" exit */
	return (err >= 0 ? 0 : -1);
}