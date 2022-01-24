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
struct adist_host {int adh_worker_pid; int adh_reset; int /*<<< orphan*/  adh_remoteaddr; int /*<<< orphan*/  adh_name; int /*<<< orphan*/  adh_role; int /*<<< orphan*/  adh_directory; int /*<<< orphan*/ * adh_conn; } ;
struct adist_config {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADIST_USER ; 
 int /*<<< orphan*/  EX_CONFIG ; 
 int /*<<< orphan*/  EX_OSFILE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct adist_config* adcfg ; 
 struct adist_host* adhost ; 
 int /*<<< orphan*/ * adist_trail ; 
 int /*<<< orphan*/  FUNC1 (struct adist_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adist_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  guard_thread ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  recv_thread ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  send_thread ; 
 scalar_t__ FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

void
FUNC26(struct adist_config *config, struct adist_host *adh)
{
	pthread_t td;
	pid_t pid;
	int error, mode, debuglevel;

	/*
	 * Create communication channel for sending connection requests from
	 * child to parent.
	 */
	if (FUNC14(NULL, "socketpair://", -1, &adh->adh_conn) == -1) {
		FUNC8(LOG_ERR,
		    "Unable to create connection sockets between child and parent");
		return;
	}

	pid = FUNC4();
	if (pid == -1) {
		FUNC8(LOG_ERR, "Unable to fork");
		FUNC13(adh->adh_conn);
		adh->adh_conn = NULL;
		return;
	}

	if (pid > 0) {
		/* This is parent. */
		adh->adh_worker_pid = pid;
		/* Declare that we are receiver. */
		FUNC15(adh->adh_conn, NULL, 0);
		return;
	}

	adcfg = config;
	adhost = adh;

	mode = FUNC11();
	debuglevel = FUNC6();

	/* Declare that we are sender. */
	FUNC16(adhost->adh_conn, NULL, 0);

	FUNC2(adhost);

#ifdef TODO
	descriptors_assert(adhost, mode);
#endif

	FUNC10(mode);
	FUNC7(debuglevel);
	FUNC12("[%s] (%s) ", adhost->adh_name,
	    FUNC19(adhost->adh_role));
#ifdef HAVE_SETPROCTITLE
	setproctitle("[%s] (%s) ", adhost->adh_name,
	    role2str(adhost->adh_role));
#endif

	/*
	 * The sender process should be able to remove entries from its
	 * trail directory, but it should not be able to write to the
	 * trail files, only read from them.
	 */
	adist_trail = FUNC24(adhost->adh_directory, false);
	if (adist_trail == NULL)
		FUNC3(EX_OSFILE);

	if (FUNC20(ADIST_USER, true, "auditdistd: %s (%s)",
	    FUNC19(adhost->adh_role), adhost->adh_name) != 0) {
		FUNC3(EX_CONFIG);
	}
	FUNC9("Privileges successfully dropped.");

	/*
	 * We can ignore wait_for_dir_init() failures. It will fall back to
	 * using sleep(3).
	 */
	(void)FUNC25(FUNC23(adist_trail));

	FUNC5();
	if (FUNC21() == 0) {
		FUNC9("Successfully connected to %s.",
		    adhost->adh_remoteaddr);
	}
	adhost->adh_reset = true;

	/*
	 * Create the guard thread first, so we can handle signals from the
	 * very begining.
	 */
	error = FUNC17(&td, NULL, guard_thread, NULL);
	FUNC0(error == 0);
	error = FUNC17(&td, NULL, send_thread, NULL);
	FUNC0(error == 0);
	error = FUNC17(&td, NULL, recv_thread, NULL);
	FUNC0(error == 0);
	(void)FUNC18(NULL);
}