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
struct passwd {int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_dir; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int NSIG ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_NOFOLLOW ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
#define  PRIV_MOVE_LOG 130 
#define  PRIV_OPEN_LOG 129 
#define  PRIV_SET_SNAPLEN 128 
 int SIGALRM ; 
 int SIGCHLD ; 
 int SIGHUP ; 
 int SIGINT ; 
 int SIGQUIT ; 
 int SIGTERM ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int _NSIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ child_pid ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  filename ; 
 scalar_t__ FUNC7 () ; 
 struct passwd* FUNC8 (char*) ; 
 int /*<<< orphan*/  gotsig_chld ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC10 (int,int*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int,int) ; 
 int priv_fd ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sig_chld ; 
 int /*<<< orphan*/  sig_pass_to_chld ; 
 int /*<<< orphan*/  FUNC21 (int,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 

int
FUNC24(void)
{
	int i, fd, socks[2], cmd;
	int snaplen, ret, olderrno;
	struct passwd *pw;

#ifdef __FreeBSD__
	for (i = 1; i < NSIG; i++)
#else
	for (i = 1; i < _NSIG; i++)
#endif
		FUNC21(i, SIG_DFL);

	/* Create sockets */
	if (FUNC22(AF_LOCAL, SOCK_STREAM, PF_UNSPEC, socks) == -1)
		FUNC5(1, "socketpair() failed");

	pw = FUNC8("_pflogd");
	if (pw == NULL)
		FUNC6(1, "unknown user _pflogd");
	FUNC4();

	child_pid = FUNC7();
	if (child_pid < 0)
		FUNC5(1, "fork() failed");

	if (!child_pid) {
		gid_t gidset[1];

		/* Child - drop privileges and return */
		if (FUNC2(pw->pw_dir) != 0)
			FUNC5(1, "unable to chroot");
		if (FUNC1("/") != 0)
			FUNC5(1, "unable to chdir");

		gidset[0] = pw->pw_gid;
		if (FUNC19(pw->pw_gid, pw->pw_gid, pw->pw_gid) == -1)
			FUNC5(1, "setresgid() failed");
		if (FUNC17(1, gidset) == -1)
			FUNC5(1, "setgroups() failed");
		if (FUNC20(pw->pw_uid, pw->pw_uid, pw->pw_uid) == -1)
			FUNC5(1, "setresuid() failed");
		FUNC3(socks[0]);
		priv_fd = socks[1];
		return 0;
	}

	/* Father */
	/* Pass ALRM/TERM/HUP/INT/QUIT through to child, and accept CHLD */
	FUNC21(SIGALRM, sig_pass_to_chld);
	FUNC21(SIGTERM, sig_pass_to_chld);
	FUNC21(SIGHUP,  sig_pass_to_chld);
	FUNC21(SIGINT,  sig_pass_to_chld);
	FUNC21(SIGQUIT,  sig_pass_to_chld);
	FUNC21(SIGCHLD, sig_chld);

	FUNC18("[priv]");
	FUNC3(socks[1]);

	while (!gotsig_chld) {
		if (FUNC10(socks[0], &cmd, sizeof(int)))
			break;
		switch (cmd) {
		case PRIV_SET_SNAPLEN:
			FUNC9(LOG_DEBUG,
			    "[priv]: msg PRIV_SET_SNAPLENGTH received");
			FUNC12(socks[0], &snaplen, sizeof(int));

			ret = FUNC16(snaplen);
			if (ret) {
				FUNC9(LOG_NOTICE,
				   "[priv]: set_snaplen failed for snaplen %d",
				   snaplen);
			}

			FUNC13(socks[0], &ret, sizeof(int));
			break;

		case PRIV_OPEN_LOG:
			FUNC9(LOG_DEBUG,
			    "[priv]: msg PRIV_OPEN_LOG received");
			/* create or append logs but do not follow symlinks */
			fd = FUNC14(filename,
			    O_RDWR|O_CREAT|O_APPEND|O_NONBLOCK|O_NOFOLLOW,
			    0600);
			olderrno = errno;
			FUNC15(socks[0], fd);
			if (fd < 0)
				FUNC9(LOG_NOTICE,
				    "[priv]: failed to open %s: %s",
				    filename, FUNC23(olderrno));
			else
				FUNC3(fd);
			break;

		case PRIV_MOVE_LOG:
			FUNC9(LOG_DEBUG,
			    "[priv]: msg PRIV_MOVE_LOG received");
			ret = FUNC11(filename);
			FUNC13(socks[0], &ret, sizeof(int));
			break;

		default:
			FUNC9(LOG_ERR, "[priv]: unknown command %d", cmd);
			FUNC0(1);
			/* NOTREACHED */
		}
	}

	FUNC0(1);
}