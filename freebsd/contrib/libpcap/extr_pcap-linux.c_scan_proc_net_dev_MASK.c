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
typedef  int /*<<< orphan*/  pcap_if_list_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char) ; 
 scalar_t__ FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(pcap_if_list_t *devlistp, char *errbuf)
{
	FILE *proc_net_f;
	int fd;
	char linebuf[512];
	int linenum;
	char *p;
	int ret = 0;

	proc_net_f = FUNC5("/proc/net/dev", "r");
	if (proc_net_f == NULL) {
		/*
		 * Don't fail if it doesn't exist at all.
		 */
		if (errno == ENOENT)
			return (0);

		/*
		 * Fail if we got some other error.
		 */
		FUNC8(errbuf, PCAP_ERRBUF_SIZE,
		    errno, "Can't open /proc/net/dev");
		return (-1);
	}

	/*
	 * Create a socket from which to fetch interface information.
	 */
	fd = FUNC9(PF_UNIX, SOCK_RAW, 0);
	if (fd < 0) {
		FUNC8(errbuf, PCAP_ERRBUF_SIZE,
		    errno, "socket");
		(void)FUNC2(proc_net_f);
		return (-1);
	}

	for (linenum = 1;
	    FUNC4(linebuf, sizeof linebuf, proc_net_f) != NULL; linenum++) {
		/*
		 * Skip the first two lines - they're headers.
		 */
		if (linenum <= 2)
			continue;

		p = &linebuf[0];

		/*
		 * Skip leading white space.
		 */
		while (*p != '\0' && FUNC6(*p) && FUNC7(*p))
			p++;
		if (*p == '\0' || *p == '\n')
			continue;	/* blank line */

		/*
		 * Attempt to add the interface.
		 */
		if (FUNC0(devlistp, p, fd, errbuf) == -1) {
			/* Fail. */
			ret = -1;
			break;
		}
	}
	if (ret != -1) {
		/*
		 * Well, we didn't fail for any other reason; did we
		 * fail due to an error reading the file?
		 */
		if (FUNC3(proc_net_f)) {
			FUNC8(errbuf, PCAP_ERRBUF_SIZE,
			    errno, "Error reading /proc/net/dev");
			ret = -1;
		}
	}

	(void)FUNC1(fd);
	(void)FUNC2(proc_net_f);
	return (ret);
}