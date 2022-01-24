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
typedef  int uint64_t ;
typedef  scalar_t__ u_int64_t ;
typedef  int u_int ;
typedef  scalar_t__ time_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct ssh {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_2__ {scalar_t__ client_alive_interval; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ssh*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*,int*,scalar_t__*) ; 
 scalar_t__ child_terminated ; 
 int /*<<< orphan*/  FUNC5 (struct ssh*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__ options ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 int FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

__attribute__((used)) static void
FUNC15(struct ssh *ssh,
    int connection_in, int connection_out,
    fd_set **readsetp, fd_set **writesetp, int *maxfdp,
    u_int *nallocp, u_int64_t max_time_ms)
{
	struct timeval tv, *tvp;
	int ret;
	time_t minwait_secs = 0;
	int client_alive_scheduled = 0;
	static time_t last_client_time;

	/* Allocate and update select() masks for channel descriptors. */
	FUNC4(ssh, readsetp, writesetp, maxfdp,
	    nallocp, &minwait_secs);

	/* XXX need proper deadline system for rekey/client alive */
	if (minwait_secs != 0)
		max_time_ms = FUNC2(max_time_ms, (u_int)minwait_secs * 1000);

	/*
	 * if using client_alive, set the max timeout accordingly,
	 * and indicate that this particular timeout was for client
	 * alive by setting the client_alive_scheduled flag.
	 *
	 * this could be randomized somewhat to make traffic
	 * analysis more difficult, but we're not doing it yet.
	 */
	if (options.client_alive_interval) {
		uint64_t keepalive_ms =
		    (uint64_t)options.client_alive_interval * 1000;

		client_alive_scheduled = 1;
		if (max_time_ms == 0 || max_time_ms > keepalive_ms)
			max_time_ms = keepalive_ms;
	}

#if 0
	/* wrong: bad condition XXX */
	if (channel_not_very_much_buffered_data())
#endif
	FUNC1(connection_in, *readsetp);
	FUNC10(*readsetp);

	/*
	 * If we have buffered packet data going to the client, mark that
	 * descriptor.
	 */
	if (FUNC11())
		FUNC1(connection_out, *writesetp);

	/*
	 * If child has terminated and there is enough buffer space to read
	 * from it, then read as much as is available and exit.
	 */
	if (child_terminated && FUNC12())
		if (max_time_ms == 0 || client_alive_scheduled)
			max_time_ms = 100;

	if (max_time_ms == 0)
		tvp = NULL;
	else {
		tv.tv_sec = max_time_ms / 1000;
		tv.tv_usec = 1000 * (max_time_ms % 1000);
		tvp = &tv;
	}

	/* Wait for something to happen, or the timeout to expire. */
	ret = FUNC13((*maxfdp)+1, *readsetp, *writesetp, NULL, tvp);

	if (ret == -1) {
		FUNC7(*readsetp, 0, *nallocp);
		FUNC7(*writesetp, 0, *nallocp);
		if (errno != EINTR)
			FUNC6("select: %.100s", FUNC14(errno));
	} else if (client_alive_scheduled) {
		time_t now = FUNC8();

		if (ret == 0) { /* timeout */
			FUNC5(ssh);
		} else if (FUNC0(connection_in, *readsetp)) {
			last_client_time = now;
		} else if (last_client_time != 0 && last_client_time +
		    options.client_alive_interval <= now) {
			FUNC5(ssh);
			last_client_time = now;
		}
	}

	FUNC9(*readsetp);
}