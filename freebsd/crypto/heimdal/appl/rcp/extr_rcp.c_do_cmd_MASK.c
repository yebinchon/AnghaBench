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
 char* RSH_PROGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ doencrypt ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ eflag ; 
 int /*<<< orphan*/  FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ forwardtkt ; 
 scalar_t__ noencrypt ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int*) ; 
 char* port ; 
 scalar_t__ usebroken ; 
 scalar_t__ usekrb4 ; 
 scalar_t__ usekrb5 ; 

int
FUNC7(char *host, char *remuser, char *cmd, int *fdin, int *fdout)
{
	int pin[2], pout[2], reserved[2];

	/*
	 * Reserve two descriptors so that the real pipes won't get
	 * descriptors 0 and 1 because that will screw up dup2 below.
	 */
	FUNC6(reserved);

	/* Create a socket pair for communicating with rsh. */
	if (FUNC6(pin) < 0) {
		FUNC5("pipe");
		FUNC3(255);
	}
	if (FUNC6(pout) < 0) {
		FUNC5("pipe");
		FUNC3(255);
	}

	/* Free the reserved descriptors. */
	FUNC0(reserved[0]);
	FUNC0(reserved[1]);

	/* For a child to execute the command on the remote host using rsh. */
	if (FUNC4() == 0) {
		char *args[100];
		unsigned int i;

		/* Child. */
		FUNC0(pin[1]);
		FUNC0(pout[0]);
		FUNC1(pin[0], 0);
		FUNC1(pout[1], 1);
		FUNC0(pin[0]);
		FUNC0(pout[1]);

		i = 0;
		args[i++] = RSH_PROGRAM;
		if (usekrb4)
			args[i++] = "-4";
		if (usekrb5)
			args[i++] = "-5";
		if (usebroken)
			args[i++] = "-K";
		if (doencrypt)
			args[i++] = "-x";
		if (forwardtkt)
			args[i++] = "-F";
		if (noencrypt)
			args[i++] = "-z";
		if (port != NULL) {
			args[i++] = "-p";
			args[i++] = port;
		}
		if (eflag)
		    args[i++] = "-e";
		if (remuser != NULL) {
			args[i++] = "-l";
			args[i++] = remuser;
		}
		args[i++] = host;
		args[i++] = cmd;
		args[i++] = NULL;

		FUNC2(RSH_PROGRAM, args);
		FUNC5(RSH_PROGRAM);
		FUNC3(1);
	}
	/* Parent.  Close the other side, and return the local side. */
	FUNC0(pin[0]);
	*fdout = pin[1];
	FUNC0(pout[1]);
	*fdin = pout[0];
	return 0;
}