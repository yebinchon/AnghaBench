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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  rhost ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENTRIES ; 
 int EOF ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int LOG_CONS ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int LOG_PID ; 
 int MAXHOSTNAMELEN ; 
 char* MSG ; 
 int STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  TCP_NOPUSH ; 
 char* _PATH_FINGER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int,char**,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 char* FUNC13 (int) ; 
 char* FUNC14 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ opterr ; 
 int /*<<< orphan*/  optopt ; 
 scalar_t__ FUNC17 (int*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 scalar_t__ FUNC22 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC23 (char*,char) ; 
 char* FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 char* FUNC27 (char*,char) ; 
 char* FUNC28 (char*,char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (int,char*,int /*<<< orphan*/ ) ; 

int
FUNC32(int argc, char *argv[])
{
	FILE *fp;
	int ch;
	char *lp;
	struct sockaddr_storage ss;
	socklen_t sval;
	int p[2], debug, kflag, logging, pflag, secure;
#define	ENTRIES	50
	char **ap, *av[ENTRIES + 1], **comp, line[1024], *prog;
	char rhost[MAXHOSTNAMELEN];

	prog = _PATH_FINGER;
	debug = logging = kflag = pflag = secure = 0;
	FUNC16("fingerd", LOG_PID | LOG_CONS, LOG_DAEMON);
	opterr = 0;
	while ((ch = FUNC10(argc, argv, "dklp:s")) != -1)
		switch (ch) {
		case 'd':
			debug = 1;
			break;
		case 'k':
			kflag = 1;
			break;
		case 'l':
			logging = 1;
			break;
		case 'p':
			prog = optarg;
			pflag = 1;
			break;
		case 's':
			secure = 1;
			break;
		case '?':
		default:
			FUNC12("illegal option -- %c", optopt);
		}

	/*
	 * Enable server-side Transaction TCP.
	 */
	if (!debug) {
		int one = 1;
		if (FUNC22(STDOUT_FILENO, IPPROTO_TCP, TCP_NOPUSH, &one, 
			       sizeof one) < 0) {
			FUNC12("setsockopt(TCP_NOPUSH) failed: %m");
		}
	}

	if (!FUNC7(line, sizeof(line), stdin))
		FUNC5(1);

	if (!debug && (logging || pflag)) {
		sval = sizeof(ss);
		if (FUNC11(0, (struct sockaddr *)&ss, &sval) < 0)
			FUNC12("getpeername: %s", FUNC25(errno));
		FUNC20(rhost, sizeof rhost - 1,
				(struct sockaddr *)&ss, sval);
		rhost[sizeof(rhost) - 1] = '\0';
		if (pflag)
			FUNC21("FINGERD_REMOTE_HOST", rhost, 1);
	}

	if (logging) {
		char *t;
		char *end;

		end = FUNC14(line, 0, sizeof(line));
		if (end == NULL) {
			if ((t = FUNC13(sizeof(line) + 1)) == NULL)
				FUNC12("malloc: %s", FUNC25(errno));
			FUNC15(t, line, sizeof(line));
			t[sizeof(line)] = 0;
		} else {
			if ((t = FUNC24(line)) == NULL)
				FUNC12("strdup: %s", FUNC25(errno));
		}
		for (end = t; *end; end++)
			if (*end == '\n' || *end == '\r')
				*end = ' ';
		FUNC29(LOG_NOTICE, "query from %s: `%s'", rhost, t);
	}

	comp = &av[2];
	av[3] = "--";
	if (kflag)
		*comp-- = "-k";
	for (lp = line, ap = &av[4];;) {
		*ap = FUNC28(lp, " \t\r\n");
		if (!*ap) {
			if (secure && ap == &av[4]) {
#ifdef USE_BLACKLIST
				blacklist(1, STDIN_FILENO, "nousername");
#endif
				FUNC19("must provide username\r\n");
				FUNC5(1);
			}
			break;
		}
		if (secure && FUNC23(*ap, '@')) {
#ifdef USE_BLACKLIST
			blacklist(1, STDIN_FILENO, "noforwarding");
#endif
			FUNC19("forwarding service denied\r\n");
			FUNC5(1);
		}

		/* RFC742: "/[Ww]" == "-l" */
		if ((*ap)[0] == '/' && ((*ap)[1] == 'W' || (*ap)[1] == 'w')) {
			*comp-- = "-l";
		}
		else if (++ap == av + ENTRIES) {
			*ap = NULL;
			break;
		}
		lp = NULL;
	}

	if ((lp = FUNC27(prog, '/')) != NULL)
		*comp = ++lp;
	else
		*comp = prog;
	if (FUNC17(p) < 0)
		FUNC12("pipe: %s", FUNC25(errno));

	if (debug) {
		FUNC8(stderr, "%s", prog);
		for (ap = comp; *ap != NULL; ++ap)
			FUNC8(stderr, " %s", *ap);
		FUNC8(stderr, "\n");
	}

	switch(FUNC30()) {
	case 0:
		(void)FUNC2(p[0]);
		if (p[1] != STDOUT_FILENO) {
			(void)FUNC3(p[1], STDOUT_FILENO);
			(void)FUNC2(p[1]);
		}
		FUNC3(STDOUT_FILENO, STDERR_FILENO);

#ifdef USE_BLACKLIST
		blacklist(0, STDIN_FILENO, "success");
#endif
		FUNC4(prog, comp);
		FUNC31(STDERR_FILENO, prog, FUNC26(prog));
#define MSG ": cannot execute\n"
		FUNC31(STDERR_FILENO, MSG, FUNC26(MSG));
#undef MSG
		FUNC0(1);
	case -1:
		FUNC12("fork: %s", FUNC25(errno));
	}
	(void)FUNC2(p[1]);
	if (!(fp = FUNC6(p[0], "r")))
		FUNC12("fdopen: %s", FUNC25(errno));
	while ((ch = FUNC9(fp)) != EOF) {
		if (ch == '\n')
			FUNC18('\r');
		FUNC18(ch);
	}
	FUNC5(0);
}