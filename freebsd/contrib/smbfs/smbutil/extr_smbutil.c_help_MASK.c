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
 char* __progname ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(void) {
	FUNC1("\n");
	FUNC1("usage: %s [-hv] command [args]\n", __progname);
	FUNC1("where commands are:\n"
	" crypt [password]		slightly encrypt password\n"
	" help command			display help on \"command\"\n"
	" lc 				display active connections\n"
	" login //user@host[/share]	login to the specified host\n"
	" logout //user@host[/share]	logout from the specified host\n"
	" print //user@host/share file	print file to the specified remote printer\n"
	" view //user@host		list resources on the specified host\n"
	"\n");
	FUNC0(1);
}