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
 char* PACKAGE_BUGREPORT ; 
 char* PACKAGE_VERSION ; 
 char* ROOT_ANCHOR_FILE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1("Usage:	unbound-host [-C configfile] [-vdhr46] [-c class] [-t type]\n");
	FUNC1("                     [-y key] [-f keyfile] [-F namedkeyfile] hostname\n");
	FUNC1("  Queries the DNS for information.\n");
	FUNC1("  The hostname is looked up for IP4, IP6 and mail.\n");
	FUNC1("  If an ip-address is given a reverse lookup is done.\n");
	FUNC1("  Use the -v option to see DNSSEC security information.\n");
	FUNC1("    -t type		what type to look for.\n");
	FUNC1("    -c class		what class to look for, if not class IN.\n");
	FUNC1("    -y 'keystring'	specify trust anchor, DS or DNSKEY, like\n");
	FUNC1("			-y 'example.com DS 31560 5 1 1CFED8478...'\n");
	FUNC1("    -D			DNSSEC enable with default root anchor\n");
	FUNC1("    			from %s\n", ROOT_ANCHOR_FILE);
	FUNC1("    -f keyfile		read trust anchors from file, with lines as -y.\n");
	FUNC1("    -F keyfile		read named.conf-style trust anchors.\n");
	FUNC1("    -C config		use the specified unbound.conf (none read by default)\n");
	FUNC1("			pass as first argument if you want to override some\n");
	FUNC1("			options with further arguments\n");
	FUNC1("    -r			read forwarder information from /etc/resolv.conf\n");
	FUNC1("      			breaks validation if the forwarder does not do DNSSEC.\n");
	FUNC1("    -v			be more verbose, shows nodata and security.\n");
	FUNC1("    -d			debug, traces the action, -d -d shows more.\n");
	FUNC1("    -4			use ipv4 network, avoid ipv6.\n");
	FUNC1("    -6			use ipv6 network, avoid ipv4.\n");
	FUNC1("    -h			show this usage help.\n");
	FUNC1("Version %s\n", PACKAGE_VERSION);
	FUNC1("BSD licensed, see LICENSE in source package for details.\n");
	FUNC1("Report bugs to %s\n", PACKAGE_BUGREPORT);
	FUNC0(1);
}