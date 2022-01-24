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
struct TYPE_2__ {int /*<<< orphan*/  pam_thread; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  SIGCHLD ; 
 scalar_t__ SIGTERM ; 
 int /*<<< orphan*/  SIG_DFL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WNOHANG ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cleanup_ctxt ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sshpam_thread_status ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(int sig)
{
	FUNC6(SIGCHLD, SIG_DFL);
	if (cleanup_ctxt == NULL)
		return;	/* handler called after PAM cleanup, shouldn't happen */
	if (FUNC7(cleanup_ctxt->pam_thread, &sshpam_thread_status, WNOHANG)
	    <= 0) {
		/* PAM thread has not exitted, privsep slave must have */
		FUNC4(cleanup_ctxt->pam_thread, SIGTERM);
		while (FUNC7(cleanup_ctxt->pam_thread,
		    &sshpam_thread_status, 0) == -1) {
			if (errno == EINTR)
				continue;
			return;
		}
	}
	if (FUNC2(sshpam_thread_status) &&
	    FUNC3(sshpam_thread_status) == SIGTERM)
		return;	/* terminated by pthread_cancel */
	if (!FUNC1(sshpam_thread_status))
		FUNC5("PAM: authentication thread exited unexpectedly");
	if (FUNC0(sshpam_thread_status) != 0)
		FUNC5("PAM: authentication thread exited uncleanly");
}