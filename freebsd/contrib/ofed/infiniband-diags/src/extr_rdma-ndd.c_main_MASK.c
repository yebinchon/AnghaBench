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
struct ibdiag_opt {char* member_0; char member_1; int member_2; char* member_3; char* member_4; } ;
typedef  int /*<<< orphan*/  hostname ;

/* Variables and functions */
 scalar_t__ DEFAULT_ND_FORMAT ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int LOG_PERROR ; 
 int LOG_PID ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SYS_HOSTNAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  foreground ; 
 scalar_t__ ibd_nd_format ; 
 int /*<<< orphan*/  FUNC4 (int,char**,int /*<<< orphan*/ *,char*,struct ibdiag_opt const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  process_opts ; 
 scalar_t__ FUNC8 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char const*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 () ; 

int FUNC14(int argc, char *argv[])
{
	int fd;
	char hostname[128];

	FUNC7("rdma-ndd", LOG_PID | LOG_PERROR, LOG_DAEMON);

	const struct ibdiag_opt opts[] = {
		{"retry_timer", 't', 1, "<retry_timer>",
			"Length of time to sleep when system errors occur "
			"when attempting to poll and or read the hostname "
			"from the system.\n"},
		{"retry_count", 'r', 1, "<retry_count>",
			"Number of times to attempt to retry setting "
			"of the node description on failure\n"},
		{"foreground", 'f', 0, NULL, "run in the foreground instead of as a daemon\n"},
		{"pidfile", 0, 1, "<pidfile>", "specify a pid file (daemon mode only)\n"},
		{0}
	};

	FUNC4(argc, argv, NULL, "CPDLGtsKyevd", opts,
			    process_opts, "", NULL);

	if (!ibd_nd_format)
		ibd_nd_format = DEFAULT_ND_FORMAT;

	if (!foreground) {
		FUNC1();
		FUNC7("rdma-ndd", LOG_PID, LOG_DAEMON);
		if (FUNC2(0, 0) != 0) {
			FUNC12(LOG_ERR, "Failed to daemonize\n");
			FUNC3(errno);
		}
		FUNC13();
	}

	FUNC11();

	FUNC12(LOG_INFO, "Node Descriptor format (%s)\n", ibd_nd_format);

	fd = FUNC6(SYS_HOSTNAME, O_RDONLY);
	if (FUNC8(fd, hostname, sizeof(hostname)) != 0)
		hostname[0] = '\0';
	FUNC10((const char *)hostname, 1);
	FUNC0(fd);

	FUNC5();

	FUNC9();

	return 0;
}