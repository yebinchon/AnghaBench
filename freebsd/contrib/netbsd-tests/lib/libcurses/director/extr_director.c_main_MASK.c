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
typedef  int /*<<< orphan*/  tinfo ;
typedef  int /*<<< orphan*/  term_attr ;
struct termios {char* c_cc; int /*<<< orphan*/  c_lflag; int /*<<< orphan*/  c_cflag; int /*<<< orphan*/  c_oflag; int /*<<< orphan*/  c_iflag; } ;
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* DEF_SLAVE ; 
 char* DEF_TERM ; 
 char* DEF_TERMPATH ; 
 int /*<<< orphan*/  F_SETFL ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_FILE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  SIGCHLD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TTYDEF_CFLAG ; 
 int /*<<< orphan*/  TTYDEF_IFLAG ; 
 int /*<<< orphan*/  TTYDEF_LFLAG ; 
 int /*<<< orphan*/  TTYDEF_OFLAG ; 
 int /*<<< orphan*/  TTYDEF_SPEED ; 
 size_t VERASE ; 
 size_t VKILL ; 
 scalar_t__ FUNC1 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct termios*,int /*<<< orphan*/ ) ; 
 char* check_path ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * cmdpipe ; 
 int /*<<< orphan*/ * cur_file ; 
 char* def_check_path ; 
 char* def_include_path ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ FUNC5 (char const*,char const*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct termios*,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char*) ; 
 int FUNC12 (int,char**,char*) ; 
 char* include_path ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  master ; 
 int /*<<< orphan*/  FUNC14 (struct termios*,int /*<<< orphan*/ ,int) ; 
 char* FUNC15 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,size_t) ; 
 int FUNC17 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  slave_died ; 
 int /*<<< orphan*/ * slvpipe ; 
 int FUNC21 (char*,int,char*,char const*,char*) ; 
 int FUNC22 (char const*,struct stat*) ; 
 int /*<<< orphan*/ * FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 () ; 

int
FUNC27(int argc, char *argv[])
{
	extern char *optarg;
	extern int optind;
	const char *termpath, *term, *slave;
	int ch;
	pid_t slave_pid;
	extern FILE *yyin;
	char *arg1, *arg2, *arg3, *arg4;
	struct termios term_attr;
	struct stat st;

	termpath = term = slave = NULL;
	verbose = 0;

	while ((ch = FUNC12(argc, argv, "vC:I:p:s:t:T:")) != -1) {
		switch(ch) {
		case 'I':
			include_path = optarg;
			break;
		case 'C':
			check_path = optarg;
			break;
		case 'T':
			termpath = optarg;
			break;
		case 'p':
			termpath = optarg;
			break;
		case 's':
			slave = optarg;
			break;
		case 't':
			term = optarg;
			break;
		case 'v':
			verbose = 1;
			break;
		case '?':
		default:
			FUNC24();
			break;
		}
	}

	argc -= optind;
	argv += optind;
	if (argc < 1)
		FUNC24();

	if (termpath == NULL)
		termpath = DEF_TERMPATH;

	if (slave == NULL)
		slave = DEF_SLAVE;

	if (term == NULL)
		term = DEF_TERM;

	if (check_path == NULL)
		check_path = FUNC11("CHECK_PATH");
	if ((check_path == NULL) || (check_path[0] == '\0')) {
		FUNC25("$CHECK_PATH not set, defaulting to %s", def_check_path);
		check_path = def_check_path;
	}

	if (include_path == NULL)
		include_path = FUNC11("INCLUDE_PATH");
	if ((include_path == NULL) || (include_path[0] == '\0')) {
		FUNC25("$INCLUDE_PATH not set, defaulting to %s",
			def_include_path);
		include_path = def_include_path;
	}

	FUNC20(SIGCHLD, slave_died);

	if (FUNC19("TERM", term, 1) != 0)
		FUNC4(2, "Failed to set TERM variable");

	if (FUNC22(termpath, &st) == -1)
		FUNC4(1, "Cannot stat %s", termpath);

	if (FUNC0(st.st_mode)) {
		char tinfo[MAXPATHLEN];
		int l = FUNC21(tinfo, sizeof(tinfo), "%s/%s", termpath,
		    "terminfo.cdb");
		if (FUNC22(tinfo, &st) == -1)
			FUNC4(1, "Cannot stat `%s'", tinfo);
		if (l >= 4)
			tinfo[l - 4] = '\0';
		if (FUNC19("TERMINFO", tinfo, 1) != 0)
			FUNC4(1, "Failed to set TERMINFO variable");
	} else {
		int fd;
		char *tinfo;
		if ((fd = FUNC17(termpath, O_RDONLY)) == -1)
			FUNC4(1, "Cannot open `%s'", termpath);
		if ((tinfo = FUNC15(NULL, (size_t)st.st_size, PROT_READ, MAP_FILE,
			fd, 0)) == MAP_FAILED)
			FUNC4(1, "Cannot map `%s'", termpath);
		if (FUNC19("TERMINFO", tinfo, 1) != 0)
			FUNC4(1, "Failed to set TERMINFO variable");
		FUNC3(fd);
		FUNC16(tinfo, (size_t)st.st_size);
	}

	if (FUNC18(cmdpipe) < 0)
		FUNC4(1, "Command pipe creation failed");

	if (FUNC18(slvpipe) < 0)
		FUNC4(1, "Slave pipe creation failed");

	/*
	 * Create default termios settings for later use
	 */
	FUNC14(&term_attr, 0, sizeof(term_attr));
	term_attr.c_iflag = TTYDEF_IFLAG;
	term_attr.c_oflag = TTYDEF_OFLAG;
	term_attr.c_cflag = TTYDEF_CFLAG;
	term_attr.c_lflag = TTYDEF_LFLAG;
	FUNC2(&term_attr, TTYDEF_SPEED);
	term_attr.c_cc[VERASE] = '\b';
	term_attr.c_cc[VKILL] = '\025'; /* ^U */

	if ((slave_pid = FUNC10(&master, NULL, &term_attr, NULL)) < 0)
		FUNC4(1, "Fork of pty for slave failed\n");

	if (slave_pid == 0) {
		/* slave side, just exec the slave process */
		if (FUNC1(&arg1, "%d", cmdpipe[0]) < 0)
			FUNC4(1, "arg1 conversion failed");

		if (FUNC1(&arg2, "%d", cmdpipe[1]) < 0)
			FUNC4(1, "arg2 conversion failed");

		if (FUNC1(&arg3, "%d", slvpipe[0]) < 0)
			FUNC4(1, "arg3 conversion failed");

		if (FUNC1(&arg4, "%d", slvpipe[1]) < 0)
			FUNC4(1, "arg4 conversion failed");

		if (FUNC5(slave, slave, arg1, arg2, arg3, arg4, NULL) < 0)
			FUNC4(1, "Exec of slave %s failed", slave);

		/* NOT REACHED */
	}

	FUNC8(master, F_SETFL, O_NONBLOCK);

	if ((yyin = FUNC9(argv[0], "r")) == NULL)
		FUNC4(1, "Cannot open command file %s", argv[0]);

	if ((cur_file = FUNC23(argv[0])) == NULL)
		FUNC4(2, "Failed to alloc memory for test file name");

	FUNC13(1);

	FUNC26();
	FUNC7(yyin);

	FUNC6(0);
}