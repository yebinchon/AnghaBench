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
typedef  int /*<<< orphan*/  utmpx ;
struct TYPE_2__ {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct utmpx {int ut_pid; TYPE_1__ ut_tv; int /*<<< orphan*/  ut_type; int /*<<< orphan*/  ut_id; int /*<<< orphan*/  ut_line; int /*<<< orphan*/  ut_user; } ;
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct arg_val {int /*<<< orphan*/  argv; scalar_t__ argc; scalar_t__ size; } ;

/* Variables and functions */
 int AUTH_VALID ; 
 int /*<<< orphan*/  LOGIN_PROCESS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct arg_val*,char const*) ; 
 scalar_t__ auth_level ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * decrypt_input ; 
 int /*<<< orphan*/ * encrypt_output ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  line ; 
 scalar_t__ log_unauth ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct utmpx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  net ; 
 int /*<<< orphan*/  new_login ; 
 int /*<<< orphan*/  no_warn ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/ * FUNC13 (struct utmpx*) ; 
 scalar_t__ require_otp ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 char* FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

void
FUNC20(const char *host, int autologin, char *name)
{
    struct arg_val argv;
    char *user;
    int save_errno;

#ifdef ENCRYPTION
    encrypt_output = NULL;
    decrypt_input = NULL;
#endif

#ifdef HAVE_UTMPX_H
    {
	int pid = getpid();
	struct utmpx utmpx;
	struct timeval tv;
	char *clean_tty;

	/*
	 * Create utmp entry for child
	 */

	clean_tty = clean_ttyname(line);
	memset(&utmpx, 0, sizeof(utmpx));
	strncpy(utmpx.ut_user,  ".telnet", sizeof(utmpx.ut_user));
	strncpy(utmpx.ut_line,  clean_tty, sizeof(utmpx.ut_line));
#ifdef HAVE_STRUCT_UTMP_UT_ID
	strncpy(utmpx.ut_id, make_id(clean_tty), sizeof(utmpx.ut_id));
#endif
	utmpx.ut_pid = pid;

	utmpx.ut_type = LOGIN_PROCESS;

	gettimeofday (&tv, NULL);
	utmpx.ut_tv.tv_sec = tv.tv_sec;
	utmpx.ut_tv.tv_usec = tv.tv_usec;

	if (pututxline(&utmpx) == NULL)
	    fatal(net, "pututxline failed");
    }
#endif

    FUNC14();

    /*
     * -h : pass on name of host.
     *		WARNING:  -h is accepted by login if and only if
     *			getuid() == 0.
     * -p : don't clobber the environment (so terminal type stays set).
     *
     * -f : force this login, he has already been authenticated
     */

    /* init argv structure */
    argv.size=0;
    argv.argc=0;
    argv.argv=FUNC10(0); /*so we can call realloc later */
    FUNC0(&argv, "login");
    FUNC0(&argv, "-h");
    FUNC0(&argv, host);
    FUNC0(&argv, "-p");
    if(name && name[0])
	user = name;
    else
	user = FUNC6("USER");
#ifdef AUTHENTICATION
    if (auth_level < 0 || autologin != AUTH_VALID) {
	if(!no_warn) {
	    printf("User not authenticated. ");
	    if (require_otp)
		printf("Using one-time password\r\n");
	    else
		printf("Using plaintext username and password\r\n");
	}
	if (require_otp) {
	    addarg(&argv, "-a");
	    addarg(&argv, "otp");
	}
	if(log_unauth)
	    syslog(LOG_INFO, "unauthenticated access from %s (%s)",
		   host, user ? user : "unknown user");
    }
    if (auth_level >= 0 && autologin == AUTH_VALID)
	addarg(&argv, "-f");
#endif
    if(user){
	FUNC0(&argv, "--");
	FUNC0(&argv, FUNC16(user));
    }
    if (FUNC6("USER")) {
	/*
	 * Assume that login will set the USER variable
	 * correctly.  For SysV systems, this means that
	 * USER will no longer be set, just LOGNAME by
	 * login.  (The problem is that if the auto-login
	 * fails, and the user then specifies a different
	 * account name, he can get logged in with both
	 * LOGNAME and USER in his environment, but the
	 * USER value will be wrong.
	 */
	FUNC19("USER");
    }
    FUNC2();
    /*
     * This sleep(1) is in here so that telnetd can
     * finish up with the tty.  There's a race condition
     * the login banner message gets lost...
     */
    FUNC15(1);

    FUNC3(new_login, argv.argv);
    save_errno = errno;
    FUNC18(LOG_ERR, "%s: %m", new_login);
    FUNC5(net, new_login, save_errno);
    /*NOTREACHED*/
}