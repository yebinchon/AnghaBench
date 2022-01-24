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

/* Variables and functions */
 char* AUDITFILTERD_CONFFILE ; 
 char* AUDITFILTERD_PIPEFILE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{

	FUNC1(stderr, "auditfilterd [-d] [-c conffile] [-p pipefile]"
	    " [-t trailfile]\n");
	FUNC1(stderr, "  -c    Specify configuration file (default: %s)\n",
	    AUDITFILTERD_CONFFILE);
	FUNC1(stderr, "  -d    Debugging mode, don't daemonize\n");
	FUNC1(stderr, "  -p    Specify pipe file (default: %s)\n",
	    AUDITFILTERD_PIPEFILE);
	FUNC1(stderr, "  -t    Specify audit trail file (default: none)\n");
	FUNC0(-1);
}