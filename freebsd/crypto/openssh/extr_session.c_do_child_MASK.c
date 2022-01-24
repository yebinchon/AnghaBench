#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct passwd {char* pw_shell; char* pw_dir; int /*<<< orphan*/  pw_name; } ;
typedef  int /*<<< orphan*/  cell ;
typedef  int /*<<< orphan*/  argv0 ;
struct TYPE_11__ {scalar_t__ kerberos_get_afs_token; scalar_t__ use_pam; } ;
struct TYPE_10__ {int ttyfd; scalar_t__ is_subsystem; struct passwd* pw; TYPE_1__* authctxt; int /*<<< orphan*/ * tty; } ;
struct TYPE_9__ {int /*<<< orphan*/  krb5_fwd_ccache; int /*<<< orphan*/ * krb5_ctx; scalar_t__ force_pwchange; } ;
typedef  TYPE_2__ Session ;

/* Variables and functions */
 int ARGV_MAX ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  INTERNAL_SFTP_NAME ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_DFL ; 
 scalar_t__ STDERR_FILENO ; 
 scalar_t__ SUBSYSTEM_INT_SFTP ; 
 scalar_t__ SUBSYSTEM_INT_SFTP_ERROR ; 
 char* _PATH_BSHELL ; 
 char* __progname ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct ssh*,TYPE_2__*,char const*) ; 
 char** FUNC12 (struct ssh*,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct passwd*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC14 (char const*,char**,char**) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  in_chroot ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 (char*,char*,int) ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  lc ; 
 int FUNC24 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC25 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 TYPE_3__ options ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (char const*) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (struct passwd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC31 (int,char**,struct passwd*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC34 (int /*<<< orphan*/ ) ; 
 int FUNC35 (char*,char const*,int) ; 
 char* FUNC36 (char const*,char) ; 
 char* FUNC37 (char*,char*) ; 
 char* FUNC38 (char const*) ; 

void
FUNC39(struct ssh *ssh, Session *s, const char *command)
{
	extern char **environ;
	char **env;
	char *argv[ARGV_MAX];
	const char *shell, *shell0;
	struct passwd *pw = s->pw;
	int r = 0;

	/* remove hostkey from the child's memory */
	FUNC6();
	FUNC26();

	/* Force a password change */
	if (s->authctxt->force_pwchange) {
		FUNC13(pw);
		FUNC2(ssh);
		FUNC10(s);
		FUNC15(1);
	}

	/*
	 * Login(1) does this as well, and it needs uid 0 for the "-h"
	 * switch, so we let login(1) to this for us.
	 */
#ifdef HAVE_OSF_SIA
	session_setup_sia(pw, s->ttyfd == -1 ? NULL : s->tty);
	if (!check_quietlogin(s, command))
		do_motd();
#else /* HAVE_OSF_SIA */
	/* When PAM is enabled we rely on it to do the nologin check */
	if (!options.use_pam)
		FUNC9(pw);
	FUNC13(pw);
	/*
	 * PAM session modules in do_setusercontext may have
	 * generated messages, so if this in an interactive
	 * login then display them too.
	 */
	if (!FUNC1(s, command))
		FUNC7();
#endif /* HAVE_OSF_SIA */

#ifdef USE_PAM
	if (options.use_pam && !is_pam_session_open()) {
		debug3("PAM session not opened, exiting");
		display_loginmsg();
		exit(254);
	}
#endif

	/*
	 * Get the shell from the password data.  An empty shell field is
	 * legal, and means /bin/sh.
	 */
	shell = (pw->pw_shell[0] == '\0') ? _PATH_BSHELL : pw->pw_shell;

	/*
	 * Make sure $SHELL points to the shell from the password file,
	 * even if shell is overridden from login.conf
	 */
	env = FUNC12(ssh, s, shell);

#ifdef HAVE_LOGIN_CAP
	shell = login_getcapstr(lc, "shell", (char *)shell, (char *)shell);
#endif

	/*
	 * Close the connection descriptors; note that this is the child, and
	 * the server will still have the socket open, and it is important
	 * that we do not shutdown it.  Note that the descriptors cannot be
	 * closed before building the environment, as we call
	 * ssh_remote_ipaddr there.
	 */
	FUNC2(ssh);

	/*
	 * Must take new environment into use so that .ssh/rc,
	 * /etc/ssh/sshrc and xauth are run in the proper environment.
	 */
	environ = env;

#if defined(KRB5) && defined(USE_AFS)
	/*
	 * At this point, we check to see if AFS is active and if we have
	 * a valid Kerberos 5 TGT. If so, it seems like a good idea to see
	 * if we can (and need to) extend the ticket into an AFS token. If
	 * we don't do this, we run into potential problems if the user's
	 * home directory is in AFS and it's not world-readable.
	 */

	if (options.kerberos_get_afs_token && k_hasafs() &&
	    (s->authctxt->krb5_ctx != NULL)) {
		char cell[64];

		debug("Getting AFS token");

		k_setpag();

		if (k_afs_cell_of_file(pw->pw_dir, cell, sizeof(cell)) == 0)
			krb5_afslog(s->authctxt->krb5_ctx,
			    s->authctxt->krb5_fwd_ccache, cell, NULL);

		krb5_afslog_home(s->authctxt->krb5_ctx,
		    s->authctxt->krb5_fwd_ccache, NULL, NULL, pw->pw_dir);
	}
#endif

	/* Change current directory to the user's home directory. */
	if (FUNC0(pw->pw_dir) < 0) {
		/* Suppress missing homedir warning for chroot case */
#ifdef HAVE_LOGIN_CAP
		r = login_getcapbool(lc, "requirehome", 0);
#endif
		if (r || !in_chroot) {
			FUNC17(stderr, "Could not chdir to home "
			    "directory %s: %s\n", pw->pw_dir,
			    FUNC34(errno));
		}
		if (r)
			FUNC15(1);
	}

	FUNC3(STDERR_FILENO + 1);

	FUNC11(ssh, s, shell);

	/* restore SIGPIPE for child */
	FUNC32(SIGPIPE, SIG_DFL);

	if (s->is_subsystem == SUBSYSTEM_INT_SFTP_ERROR) {
		FUNC28("This service allows sftp connections only.\n");
		FUNC16(NULL);
		FUNC15(1);
	} else if (s->is_subsystem == SUBSYSTEM_INT_SFTP) {
		extern int optind, optreset;
		int i;
		char *p, *args;

		FUNC30("%s@%s", s->pw->pw_name, INTERNAL_SFTP_NAME);
		args = FUNC38(command ? command : "sftp-server");
		for (i = 0, (p = FUNC37(args, " ")); p; (p = FUNC37(NULL, " ")))
			if (i < ARGV_MAX - 1)
				argv[i++] = p;
		argv[i] = NULL;
		optind = optreset = 1;
		__progname = argv[0];
#ifdef WITH_SELINUX
		ssh_selinux_change_context("sftpd_t");
#endif
		FUNC15(FUNC31(i, argv, s->pw));
	}

	FUNC16(NULL);

	/* Get the last component of the shell name. */
	if ((shell0 = FUNC36(shell, '/')) != NULL)
		shell0++;
	else
		shell0 = shell;

	/*
	 * If we have no command, execute the shell.  In this case, the shell
	 * name to be passed in argv[0] is preceded by '-' to indicate that
	 * this is a login shell.
	 */
	if (!command) {
		char argv0[256];

		/* Start the shell.  Set initial character to '-'. */
		argv0[0] = '-';

		if (FUNC35(argv0 + 1, shell0, sizeof(argv0) - 1)
		    >= sizeof(argv0) - 1) {
			errno = EINVAL;
			FUNC27(shell);
			FUNC15(1);
		}

		/* Execute the shell. */
		argv[0] = argv0;
		argv[1] = NULL;
		FUNC14(shell, argv, env);

		/* Executing the shell failed. */
		FUNC27(shell);
		FUNC15(1);
	}
	/*
	 * Execute the command using the user's shell.  This uses the -c
	 * option to execute the command.
	 */
	argv[0] = (char *) shell0;
	argv[1] = "-c";
	argv[2] = (char *) command;
	argv[3] = NULL;
	FUNC14(shell, argv, env);
	FUNC27(shell);
	FUNC15(1);
}