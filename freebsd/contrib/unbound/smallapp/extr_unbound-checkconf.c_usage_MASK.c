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
 char* CONFIGFILE ; 
 char* PACKAGE_BUGREPORT ; 
 char* PACKAGE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1("Usage:	local-unbound-checkconf [file]\n");
	FUNC1("	Checks unbound configuration file for errors.\n");
	FUNC1("file	if omitted %s is used.\n", CONFIGFILE);
	FUNC1("-o option	print value of option to stdout.\n");
	FUNC1("-f 		output full pathname with chroot applied, eg. with -o pidfile.\n");
	FUNC1("-h		show this usage help.\n");
	FUNC1("Version %s\n", PACKAGE_VERSION);
	FUNC1("BSD licensed, see LICENSE in source package for details.\n");
	FUNC1("Report bugs to %s\n", PACKAGE_BUGREPORT);
	FUNC0(1);
}