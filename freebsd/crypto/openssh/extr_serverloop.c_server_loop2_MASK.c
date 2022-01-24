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
typedef  int u_int64_t ;
typedef  int u_int ;
struct ssh {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_2__ {scalar_t__ rekey_interval; } ;
typedef  int /*<<< orphan*/  Authctxt ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssh*) ; 
 scalar_t__ child_terminated ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int* notify_pipe ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__ options ; 
 int FUNC10 () ; 
 int FUNC11 () ; 
 int FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct ssh*) ; 
 scalar_t__ FUNC15 (struct ssh*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ received_sigterm ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct ssh*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigchld_handler ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigterm_handler ; 
 int /*<<< orphan*/  FUNC20 (struct ssh*) ; 
 int /*<<< orphan*/  use_privsep ; 
 int /*<<< orphan*/  FUNC21 (struct ssh*,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*,int*,int) ; 

void
FUNC22(struct ssh *ssh, Authctxt *authctxt)
{
	fd_set *readset = NULL, *writeset = NULL;
	int max_fd;
	u_int nalloc = 0, connection_in, connection_out;
	u_int64_t rekey_timeout_ms = 0;

	FUNC6("Entering interactive session for SSH2.");

	FUNC19(SIGCHLD, sigchld_handler);
	child_terminated = 0;
	connection_in = FUNC10();
	connection_out = FUNC11();

	if (!use_privsep) {
		FUNC19(SIGTERM, sigterm_handler);
		FUNC19(SIGINT, sigterm_handler);
		FUNC19(SIGQUIT, sigterm_handler);
	}

	FUNC9();

	max_fd = FUNC0(connection_in, connection_out);
	max_fd = FUNC0(max_fd, notify_pipe[0]);

	FUNC17();

	for (;;) {
		FUNC14(ssh);

		if (!FUNC20(ssh) &&
		    FUNC13())
			FUNC3(ssh);
		if (options.rekey_interval > 0 && !FUNC20(ssh))
			rekey_timeout_ms = FUNC12() * 1000;
		else
			rekey_timeout_ms = 0;

		FUNC21(ssh, connection_in, connection_out,
		    &readset, &writeset, &max_fd, &nalloc, rekey_timeout_ms);

		if (received_sigterm) {
			FUNC8("Exiting on signal %d", (int)received_sigterm);
			/* Clean up sessions, utmp, etc. */
			FUNC4(255);
		}

		FUNC5(ssh);
		if (!FUNC20(ssh))
			FUNC1(ssh, readset, writeset);
		if (FUNC15(ssh, readset, connection_in) < 0)
			break;
		FUNC16(writeset, connection_out);
	}
	FUNC5(ssh);

	FUNC7(readset);
	FUNC7(writeset);

	/* free all channels, no more reads and writes */
	FUNC2(ssh);

	/* free remaining sessions, e.g. remove wtmp entries */
	FUNC18(ssh, NULL);
}