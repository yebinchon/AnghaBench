#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sftp_conn {int dummy; } ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_6__ {int /*<<< orphan*/ * list; } ;
typedef  TYPE_1__ arglist ;
typedef  int /*<<< orphan*/  LogLevel ;

/* Variables and functions */
 size_t DEFAULT_COPY_BUFLEN ; 
 size_t DEFAULT_NUM_REQUESTS ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  SYSLOG_FACILITY_USER ; 
 int /*<<< orphan*/  SYSLOG_LEVEL_DEBUG1 ; 
 int /*<<< orphan*/  SYSLOG_LEVEL_ERROR ; 
 int /*<<< orphan*/  SYSLOG_LEVEL_INFO ; 
 char* _PATH_SFTP_SERVER ; 
 char* _PATH_SSH_PROGRAM ; 
 int /*<<< orphan*/  __progname ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int batchmode ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int*,int*) ; 
 struct sftp_conn* FUNC5 (int,int,size_t,size_t,long long) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (int,char**,char*) ; 
 int global_aflag ; 
 int global_fflag ; 
 int global_pflag ; 
 int global_rflag ; 
 int /*<<< orphan*/ * infile ; 
 int FUNC13 (struct sftp_conn*,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 (char*,char*,char**,char**,int*,char**) ; 
 int FUNC19 (char*,char**,char**,char**) ; 
 int quiet ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 scalar_t__ showprogress ; 
 int /*<<< orphan*/  FUNC22 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int sshpid ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * FUNC25 (char*,char) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 
 char* FUNC27 (scalar_t__) ; 
 size_t FUNC28 (char*,char**,int) ; 
 long long FUNC29 (char*,int,int,char const**) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int FUNC31 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC32 (char*) ; 

int
FUNC33(int argc, char **argv)
{
	int in, out, ch, err, tmp, port = -1;
	char *host = NULL, *user, *cp, *file2 = NULL;
	int debug_level = 0, sshver = 2;
	char *file1 = NULL, *sftp_server = NULL;
	char *ssh_program = _PATH_SSH_PROGRAM, *sftp_direct = NULL;
	const char *errstr;
	LogLevel ll = SYSLOG_LEVEL_INFO;
	arglist args;
	extern int optind;
	extern char *optarg;
	struct sftp_conn *conn;
	size_t copy_buffer_len = DEFAULT_COPY_BUFLEN;
	size_t num_requests = DEFAULT_NUM_REQUESTS;
	long long limit_kbps = 0;

	FUNC24();	/* must be called before any mallocs */
	/* Ensure that fds 0, 1 and 2 are open or directed to /dev/null */
	FUNC21();
	FUNC17();

	__progname = FUNC23(argv[0]);
	FUNC16(&args, '\0', sizeof(args));
	args.list = NULL;
	FUNC1(&args, "%s", ssh_program);
	FUNC1(&args, "-oForwardX11 no");
	FUNC1(&args, "-oForwardAgent no");
	FUNC1(&args, "-oPermitLocalCommand no");
	FUNC1(&args, "-oClearAllForwardings yes");

	ll = SYSLOG_LEVEL_INFO;
	infile = stdin;

	while ((ch = FUNC12(argc, argv,
	    "1246afhpqrvCc:D:i:l:o:s:S:b:B:F:P:R:")) != -1) {
		switch (ch) {
		/* Passed through to ssh(1) */
		case '4':
		case '6':
		case 'C':
			FUNC1(&args, "-%c", ch);
			break;
		/* Passed through to ssh(1) with argument */
		case 'F':
		case 'c':
		case 'i':
		case 'o':
			FUNC1(&args, "-%c", ch);
			FUNC1(&args, "%s", optarg);
			break;
		case 'q':
			ll = SYSLOG_LEVEL_ERROR;
			quiet = 1;
			showprogress = 0;
			FUNC1(&args, "-%c", ch);
			break;
		case 'P':
			port = FUNC0(optarg);
			if (port <= 0)
				FUNC7("Bad port \"%s\"\n", optarg);
			break;
		case 'v':
			if (debug_level < 3) {
				FUNC1(&args, "-v");
				ll = SYSLOG_LEVEL_DEBUG1 + debug_level;
			}
			debug_level++;
			break;
		case '1':
			sshver = 1;
			if (sftp_server == NULL)
				sftp_server = _PATH_SFTP_SERVER;
			break;
		case '2':
			sshver = 2;
			break;
		case 'a':
			global_aflag = 1;
			break;
		case 'B':
			copy_buffer_len = FUNC28(optarg, &cp, 10);
			if (copy_buffer_len == 0 || *cp != '\0')
				FUNC7("Invalid buffer size \"%s\"", optarg);
			break;
		case 'b':
			if (batchmode)
				FUNC7("Batch file already specified.");

			/* Allow "-" as stdin */
			if (FUNC26(optarg, "-") != 0 &&
			    (infile = FUNC9(optarg, "r")) == NULL)
				FUNC7("%s (%s).", FUNC27(errno), optarg);
			showprogress = 0;
			quiet = batchmode = 1;
			FUNC1(&args, "-obatchmode yes");
			break;
		case 'f':
			global_fflag = 1;
			break;
		case 'p':
			global_pflag = 1;
			break;
		case 'D':
			sftp_direct = optarg;
			break;
		case 'l':
			limit_kbps = FUNC29(optarg, 1, 100 * 1024 * 1024,
			    &errstr);
			if (errstr != NULL)
				FUNC30();
			limit_kbps *= 1024; /* kbps */
			break;
		case 'r':
			global_rflag = 1;
			break;
		case 'R':
			num_requests = FUNC28(optarg, &cp, 10);
			if (num_requests == 0 || *cp != '\0')
				FUNC7("Invalid number of requests \"%s\"",
				    optarg);
			break;
		case 's':
			sftp_server = optarg;
			break;
		case 'S':
			ssh_program = optarg;
			FUNC20(&args, 0, "%s", ssh_program);
			break;
		case 'h':
		default:
			FUNC30();
		}
	}

	if (!FUNC14(STDERR_FILENO))
		showprogress = 0;

	FUNC15(argv[0], ll, SYSLOG_FACILITY_USER, 1);

	if (sftp_direct == NULL) {
		if (optind == argc || argc > (optind + 2))
			FUNC30();
		argv += optind;

		switch (FUNC18("sftp", *argv, &user, &host, &tmp, &file1)) {
		case -1:
			FUNC30();
			break;
		case 0:
			if (tmp != -1)
				port = tmp;
			break;
		default:
			if (FUNC19(*argv, &user, &host,
			    &file1) == -1) {
				/* Treat as a plain hostname. */
				host = FUNC32(*argv);
				host = FUNC2(host);
			}
			break;
		}
		file2 = *(argv + 1);

		if (!*host) {
			FUNC10(stderr, "Missing hostname\n");
			FUNC30();
		}

		if (port != -1)
			FUNC1(&args, "-oPort %d", port);
		if (user != NULL) {
			FUNC1(&args, "-l");
			FUNC1(&args, "%s", user);
		}
		FUNC1(&args, "-oProtocol %d", sshver);

		/* no subsystem if the server-spec contains a '/' */
		if (sftp_server == NULL || FUNC25(sftp_server, '/') == NULL)
			FUNC1(&args, "-s");

		FUNC1(&args, "--");
		FUNC1(&args, "%s", host);
		FUNC1(&args, "%s", (sftp_server != NULL ?
		    sftp_server : "sftp"));

		FUNC4(ssh_program, args.list, &in, &out);
	} else {
		args.list = NULL;
		FUNC1(&args, "sftp-server");

		FUNC4(sftp_direct, args.list, &in, &out);
	}
	FUNC11(&args);

	conn = FUNC5(in, out, copy_buffer_len, num_requests, limit_kbps);
	if (conn == NULL)
		FUNC7("Couldn't initialise connection to server");

	if (!quiet) {
		if (sftp_direct == NULL)
			FUNC10(stderr, "Connected to %s.\n", host);
		else
			FUNC10(stderr, "Attached to %s.\n", sftp_direct);
	}

	err = FUNC13(conn, file1, file2);

#if !defined(USE_PIPES)
	FUNC22(in, SHUT_RDWR);
	FUNC22(out, SHUT_RDWR);
#endif

	FUNC3(in);
	FUNC3(out);
	if (batchmode)
		FUNC8(infile);

	while (FUNC31(sshpid, NULL, 0) == -1 && sshpid > 1)
		if (errno != EINTR)
			FUNC7("Couldn't wait for ssh process: %s",
			    FUNC27(errno));

	FUNC6(err == 0 ? 0 : 1);
}