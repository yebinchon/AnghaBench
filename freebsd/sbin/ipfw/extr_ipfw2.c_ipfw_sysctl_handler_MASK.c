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
typedef  int /*<<< orphan*/  which ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void
FUNC4(char *av[], int which)
{
	av++;

	if (av[0] == NULL) {
		FUNC3("missing keyword to enable/disable\n");
	} else if (FUNC0(*av, "firewall") == 0) {
		FUNC2("net.inet.ip.fw.enable", NULL, 0,
		    &which, sizeof(which));
		FUNC2("net.inet6.ip6.fw.enable", NULL, 0,
		    &which, sizeof(which));
	} else if (FUNC0(*av, "one_pass") == 0) {
		FUNC2("net.inet.ip.fw.one_pass", NULL, 0,
		    &which, sizeof(which));
	} else if (FUNC0(*av, "debug") == 0) {
		FUNC2("net.inet.ip.fw.debug", NULL, 0,
		    &which, sizeof(which));
	} else if (FUNC0(*av, "verbose") == 0) {
		FUNC2("net.inet.ip.fw.verbose", NULL, 0,
		    &which, sizeof(which));
	} else if (FUNC0(*av, "dyn_keepalive") == 0) {
		FUNC2("net.inet.ip.fw.dyn_keepalive", NULL, 0,
		    &which, sizeof(which));
#ifndef NO_ALTQ
	} else if (FUNC0(*av, "altq") == 0) {
		FUNC1(which);
#endif
	} else {
		FUNC3("unrecognize enable/disable keyword: %s\n", *av);
	}
}