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
typedef  int /*<<< orphan*/  hostname ;

/* Variables and functions */
 long INT_MAX ; 
 int /*<<< orphan*/  OPENPAM_RESTRICT_MODULE_NAME ; 
 int /*<<< orphan*/  OPENPAM_RESTRICT_SERVICE_NAME ; 
 int /*<<< orphan*/  OPENPAM_VERIFY_MODULE_FILE ; 
 int /*<<< orphan*/  OPENPAM_VERIFY_POLICY_FILE ; 
 int /*<<< orphan*/  PAM_CHANGE_EXPIRED_AUTHTOK ; 
 int /*<<< orphan*/  PAM_DELETE_CRED ; 
 int /*<<< orphan*/  PAM_ESTABLISH_CRED ; 
 int /*<<< orphan*/  PAM_HOST ; 
 int /*<<< orphan*/  PAM_RHOST ; 
 int /*<<< orphan*/  PAM_RUSER ; 
 int /*<<< orphan*/  PAM_SILENT ; 
 int PAM_SUCCESS ; 
 int PAM_SYSTEM_ERR ; 
 int /*<<< orphan*/  PAM_TTY ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char*,int) ; 
 char* FUNC4 () ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  openpam_debug ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int openpam_ttyconv_timeout ; 
 int /*<<< orphan*/  FUNC7 (int,long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 () ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (char const*,char const*) ; 
 int /*<<< orphan*/  silent ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 char* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  verbose ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 

int
FUNC23(int argc, char *argv[])
{
	char hostname[1024];
	const char *rhost = NULL;
	const char *host = NULL;
	const char *ruser = NULL;
	const char *user = NULL;
	const char *service = NULL;
	const char *tty = NULL;
	long timeout = 0;
	int keepatit = 0;
	int pame;
	int opt;

	while ((opt = FUNC5(argc, argv, "dH:h:kMPsT:t:U:u:v")) != -1)
		switch (opt) {
		case 'd':
			openpam_debug++;
			break;
		case 'H':
			FUNC8(opt, &rhost, optarg);
			break;
		case 'h':
			FUNC8(opt, &host, optarg);
			break;
		case 'k':
			keepatit = 1;
			break;
		case 'M':
			FUNC6(OPENPAM_RESTRICT_MODULE_NAME, 0);
			FUNC6(OPENPAM_VERIFY_MODULE_FILE, 0);
			break;
		case 'P':
			FUNC6(OPENPAM_RESTRICT_SERVICE_NAME, 0);
			FUNC6(OPENPAM_VERIFY_POLICY_FILE, 0);
			break;
		case 's':
			silent = PAM_SILENT;
			break;
		case 'T':
			FUNC7(opt, &timeout, optarg);
			if (timeout < 0 || timeout > INT_MAX) {
				FUNC2(stderr,
				    "Invalid conversation timeout\n");
				FUNC21();
			}
			openpam_ttyconv_timeout = (int)timeout;
			break;
		case 't':
			FUNC8(opt, &tty, optarg);
			break;
		case 'U':
			FUNC8(opt, &ruser, optarg);
			break;
		case 'u':
			FUNC8(opt, &user, optarg);
			break;
		case 'v':
			verbose++;
			break;
		default:
			FUNC21();
		}

	argc -= optind;
	argv += optind;

	if (argc < 1)
		FUNC21();

	service = *argv;
	--argc;
	++argv;

	/* defaults */
	if (service == NULL)
		service = "pamtest";
	if (rhost == NULL) {
		if (FUNC3(hostname, sizeof(hostname)) == -1)
			FUNC0(1, "gethostname()");
		rhost = hostname;
	}
	if (tty == NULL)
		tty = FUNC20(STDERR_FILENO);
	if (user == NULL)
		user = FUNC4();
	if (ruser == NULL)
		ruser = user;

	/* initialize PAM */
	if ((pame = FUNC18(service, user)) != PAM_SUCCESS)
		goto end;

	/*
	 * pam_start(3) sets this to the machine's hostname, but we allow
	 * the user to override it.
	 */
	if (host != NULL)
		if ((pame = FUNC16(PAM_HOST, host)) != PAM_SUCCESS)
		    goto end;

	/*
	 * The remote host / user / tty are usually set by the
	 * application.
	 */
	if ((pame = FUNC16(PAM_RHOST, rhost)) != PAM_SUCCESS ||
	    (pame = FUNC16(PAM_RUSER, ruser)) != PAM_SUCCESS ||
	    (pame = FUNC16(PAM_TTY, tty)) != PAM_SUCCESS)
		goto end;

	while (argc > 0) {
		if (FUNC19(*argv, "listenv") == 0 ||
		    FUNC19(*argv, "env") == 0) {
			pame = FUNC14();
		} else if (FUNC19(*argv, "authenticate") == 0 ||
		    FUNC19(*argv, "auth") == 0) {
			pame = FUNC10(0);
		} else if (FUNC19(*argv, "acct_mgmt") == 0 ||
		    FUNC19(*argv, "account") == 0) {
			pame = FUNC9(0);
		} else if (FUNC19(*argv, "chauthtok") == 0 ||
		    FUNC19(*argv, "change") == 0) {
			pame = FUNC11(PAM_CHANGE_EXPIRED_AUTHTOK);
		} else if (FUNC19(*argv, "forcechauthtok") == 0 ||
		    FUNC19(*argv, "forcechange") == 0) {
			pame = FUNC11(0);
		} else if (FUNC19(*argv, "setcred") == 0 ||
		    FUNC19(*argv, "establish_cred") == 0) {
			pame = FUNC17(PAM_ESTABLISH_CRED);
		} else if (FUNC19(*argv, "open_session") == 0 ||
		    FUNC19(*argv, "open") == 0) {
			pame = FUNC15(0);
		} else if (FUNC19(*argv, "close_session") == 0 ||
		    FUNC19(*argv, "close") == 0) {
			pame = FUNC12(0);
		} else if (FUNC19(*argv, "unsetcred") == 0 ||
		    FUNC19(*argv, "delete_cred") == 0) {
			pame = FUNC17(PAM_DELETE_CRED);
		} else {
			FUNC22("unknown primitive: %s", *argv);
			pame = PAM_SYSTEM_ERR;
		}
		if (pame != PAM_SUCCESS && !keepatit) {
			FUNC22("test aborted");
			break;
		}
		--argc;
		++argv;
	}

end:
	(void)FUNC13(pame);
	FUNC1(pame == PAM_SUCCESS ? 0 : 1);
}