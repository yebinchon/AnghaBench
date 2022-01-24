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
struct TYPE_2__ {char* mac_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  bell ; 
 scalar_t__ code ; 
 scalar_t__ connected ; 
 int /*<<< orphan*/  crflag ; 
 int /*<<< orphan*/  doglob ; 
 char* formname ; 
 int /*<<< orphan*/  hash ; 
 char* hostname ; 
 int /*<<< orphan*/  interactive ; 
 int macnum ; 
 TYPE_1__* macros ; 
 scalar_t__ mapflag ; 
 char* mapin ; 
 char* mapout ; 
 int /*<<< orphan*/  mcase ; 
 char* modename ; 
 scalar_t__ ntflag ; 
 char* ntin ; 
 char* ntout ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  proxy ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  runique ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  sendport ; 
 char* structname ; 
 int /*<<< orphan*/  sunique ; 
 char* typename ; 
 int /*<<< orphan*/  verbose ; 

void
FUNC4(int argc, char **argv)
{
	int i;

	if (connected)
		FUNC1("Connected to %s.\n", hostname);
	else
		FUNC1("Not connected.\n");
	if (!proxy) {
		FUNC2(1);
		if (connected) {
			FUNC1("Connected for proxy commands to %s.\n", hostname);
		}
		else {
			FUNC1("No proxy connection.\n");
		}
		FUNC2(0);
	}
	FUNC3();
	FUNC1("Mode: %s; Type: %s; Form: %s; Structure: %s\n",
		modename, typename, formname, structname);
	FUNC1("Verbose: %s; Bell: %s; Prompting: %s; Globbing: %s\n",
		FUNC0(verbose), FUNC0(bell), FUNC0(interactive),
		FUNC0(doglob));
	FUNC1("Store unique: %s; Receive unique: %s\n", FUNC0(sunique),
		FUNC0(runique));
	FUNC1("Case: %s; CR stripping: %s\n",FUNC0(mcase),FUNC0(crflag));
	if (ntflag) {
		FUNC1("Ntrans: (in) %s (out) %s\n", ntin,ntout);
	}
	else {
		FUNC1("Ntrans: off\n");
	}
	if (mapflag) {
		FUNC1("Nmap: (in) %s (out) %s\n", mapin, mapout);
	}
	else {
		FUNC1("Nmap: off\n");
	}
	FUNC1("Hash mark printing: %s; Use of PORT cmds: %s\n",
		FUNC0(hash), FUNC0(sendport));
	if (macnum > 0) {
		FUNC1("Macros:\n");
		for (i=0; i<macnum; i++) {
			FUNC1("\t%s\n",macros[i].mac_name);
		}
	}
	code = 0;
}