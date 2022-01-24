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
struct adist_host {int adh_worker_pid; int adh_trail_fd; int /*<<< orphan*/  adh_name; int /*<<< orphan*/  adh_role; int /*<<< orphan*/ * adh_remote; } ;
struct adist_config {int /*<<< orphan*/  adc_timeout; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADIST_USER ; 
 int /*<<< orphan*/  EX_CONFIG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 struct adist_config* adcfg ; 
 struct adist_host* adhost ; 
 int /*<<< orphan*/  FUNC2 (struct adist_host*) ; 
 int /*<<< orphan*/  disk_thread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct adist_host*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  recv_thread ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct adist_host*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC24(struct adist_config *config, struct adist_host *adh)
{
	sigset_t mask;
	pthread_t td;
	pid_t pid;
	int error, mode, debuglevel;

	pid = FUNC4();
	if (pid == -1) {
		FUNC8(LOG_ERR, "Unable to fork");
		FUNC13(adh->adh_remote);
		adh->adh_remote = NULL;
		return;
	}

	if (pid > 0) {
		/* This is parent. */
		FUNC13(adh->adh_remote);
		adh->adh_remote = NULL;
		adh->adh_worker_pid = pid;
		return;
	}

	adcfg = config;
	adhost = adh;
	mode = FUNC11();
	debuglevel = FUNC6();

	FUNC2(adhost);

//	descriptors_assert(adhost, mode);

	FUNC10(mode);
	FUNC7(debuglevel);
	FUNC12("[%s] (%s) ", adhost->adh_name,
	    FUNC18(adhost->adh_role));
#ifdef HAVE_SETPROCTITLE
	setproctitle("%s (%s)", adhost->adh_name, role2str(adhost->adh_role));
#endif

	FUNC1(FUNC22(&mask) == 0);
	FUNC1(FUNC23(SIG_SETMASK, &mask, NULL) == 0);

	/* Error in setting timeout is not critical, but why should it fail? */
	if (FUNC14(adhost->adh_remote, adcfg->adc_timeout) == -1)
		FUNC8(LOG_WARNING, "Unable to set connection timeout");

	FUNC5();

	adhost->adh_trail_fd = -1;
	FUNC17();

	if (FUNC19(ADIST_USER, true, "auditdistd: %s (%s)",
	    FUNC18(adhost->adh_role), adhost->adh_name) != 0) {
		FUNC3(EX_CONFIG);
	}
	FUNC9("Privileges successfully dropped.");

	FUNC16();

	error = FUNC15(&td, NULL, recv_thread, adhost);
	FUNC0(error == 0);
	error = FUNC15(&td, NULL, disk_thread, adhost);
	FUNC0(error == 0);
	(void)FUNC20(adhost);
}