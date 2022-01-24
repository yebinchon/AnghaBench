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
 char* P7SIGNER ; 
 char* P7SNAME ; 
 char* PACKAGE_BUGREPORT ; 
 char* PACKAGE_VERSION ; 
 char* ROOT_ANCHOR_FILE ; 
 char* ROOT_CERT_FILE ; 
 char* URLNAME ; 
 char* XMLNAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1("Usage:	local-unbound-anchor [opts]\n");
	FUNC1("	Setup or update root anchor. "
		"Most options have defaults.\n");
	FUNC1("	Run this program before you start the validator.\n");
	FUNC1("\n");
	FUNC1("	The anchor and cert have default builtin content\n");
	FUNC1("	if the file does not exist or is empty.\n");
	FUNC1("\n");
	FUNC1("-a file		root key file, default %s\n", ROOT_ANCHOR_FILE);
	FUNC1("		The key is input and output for this tool.\n");
	FUNC1("-c file		cert file, default %s\n", ROOT_CERT_FILE);
	FUNC1("-l		list builtin key and cert on stdout\n");
	FUNC1("-u name		server in https url, default %s\n", URLNAME);
	FUNC1("-x path		pathname to xml in url, default %s\n", XMLNAME);
	FUNC1("-s path		pathname to p7s in url, default %s\n", P7SNAME);
	FUNC1("-n name		signer's subject emailAddress, default %s\n", P7SIGNER);
	FUNC1("-4		work using IPv4 only\n");
	FUNC1("-6		work using IPv6 only\n");
	FUNC1("-f resolv.conf	use given resolv.conf\n");
	FUNC1("-r root.hints	use given root.hints\n"
		"		builtin root hints are used by default\n");
	FUNC1("-R		fallback from -f to root query on error\n");
	FUNC1("-v		more verbose\n");
	FUNC1("-C conf		debug, read config\n");
	FUNC1("-P port		use port for https connect, default 443\n");
	FUNC1("-F 		debug, force update with cert\n");
	FUNC1("-h		show this usage help\n");
	FUNC1("Version %s\n", PACKAGE_VERSION);
	FUNC1("BSD licensed, see LICENSE in source package for details.\n");
	FUNC1("Report bugs to %s\n", PACKAGE_BUGREPORT);
	FUNC0(1);
}