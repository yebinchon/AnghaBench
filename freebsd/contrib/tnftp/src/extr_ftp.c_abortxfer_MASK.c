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
typedef  int /*<<< orphan*/  msgbuf ;

/* Variables and functions */
 scalar_t__ abrtflag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int* direction ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ mflag ; 
 int sigint_raised ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  ttyout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  xferabort ; 

void
FUNC7(int notused)
{
	char msgbuf[100];
	size_t len;

	sigint_raised = 1;
	FUNC0(0);
	mflag = 0;
	abrtflag = 0;
	switch (direction[0]) {
	case 'r':
		FUNC5(msgbuf, "\nreceive", sizeof(msgbuf));
		break;
	case 's':
		FUNC5(msgbuf, "\nsend", sizeof(msgbuf));
		break;
	default:
		FUNC1(1, "abortxfer: unknown direction `%s'", direction);
	}
	len = FUNC4(msgbuf, " aborted. Waiting for remote to finish abort.\n",
	    sizeof(msgbuf));
	FUNC6(FUNC2(ttyout), msgbuf, len);
	FUNC3(xferabort, 1);
}