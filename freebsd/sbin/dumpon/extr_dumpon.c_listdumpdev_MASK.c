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
struct diocskerneldump_arg {int /*<<< orphan*/  kda_gateway; int /*<<< orphan*/  kda_af; int /*<<< orphan*/  kda_client; int /*<<< orphan*/  kda_server; } ;
typedef  int /*<<< orphan*/  ip ;
typedef  int /*<<< orphan*/  dumpdev ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGKERNELDUMP ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ ENXIO ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  _PATH_NETDUMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ errno ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct diocskerneldump_arg*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (char*) ; 
 char* FUNC8 (char**,char*) ; 
 scalar_t__ FUNC9 (char const*,char**,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC10(void)
{
	static char ip[200];

	char dumpdev[PATH_MAX];
	struct diocskerneldump_arg ndconf;
	size_t len;
	const char *sysctlname = "kern.shutdown.dumpdevname";
	int fd;

	len = sizeof(dumpdev);
	if (FUNC9(sysctlname, &dumpdev, &len, NULL, 0) != 0) {
		if (errno == ENOMEM) {
			FUNC1(EX_OSERR, "Kernel returned too large of a buffer for '%s'\n",
				sysctlname);
		} else {
			FUNC1(EX_OSERR, "Sysctl get '%s'\n", sysctlname);
		}
	}
	if (FUNC7(dumpdev) == 0)
		(void)FUNC6(dumpdev, _PATH_DEVNULL, sizeof(dumpdev));

	if (verbose) {
		char *ctx, *dd;
		unsigned idx;

		FUNC5("kernel dumps on priority: device\n");
		idx = 0;
		ctx = dumpdev;
		while ((dd = FUNC8(&ctx, ",")) != NULL)
			FUNC5("%u: %s\n", idx++, dd);
	} else
		FUNC5("%s\n", dumpdev);

	/* If netdump is enabled, print the configuration parameters. */
	if (verbose) {
		fd = FUNC4(_PATH_NETDUMP, O_RDONLY);
		if (fd < 0) {
			if (errno != ENOENT)
				FUNC1(EX_OSERR, "opening %s", _PATH_NETDUMP);
			return;
		}
		if (FUNC3(fd, DIOCGKERNELDUMP, &ndconf) != 0) {
			if (errno != ENXIO)
				FUNC1(EX_OSERR, "ioctl(DIOCGKERNELDUMP)");
			(void)FUNC0(fd);
			return;
		}

		FUNC5("server address: %s\n",
		    FUNC2(ndconf.kda_af, &ndconf.kda_server, ip,
			sizeof(ip)));
		FUNC5("client address: %s\n",
		    FUNC2(ndconf.kda_af, &ndconf.kda_client, ip,
			sizeof(ip)));
		FUNC5("gateway address: %s\n",
		    FUNC2(ndconf.kda_af, &ndconf.kda_gateway, ip,
			sizeof(ip)));
		(void)FUNC0(fd);
	}
}