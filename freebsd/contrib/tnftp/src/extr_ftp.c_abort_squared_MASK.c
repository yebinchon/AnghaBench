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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int sigint_raised ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  ttyout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  xferabort ; 

void
FUNC6(int dummy)
{
	char msgbuf[100];
	size_t len;

	sigint_raised = 1;
	FUNC0(0);
	len = FUNC4(msgbuf, "\nremote abort aborted; closing connection.\n",
	    sizeof(msgbuf));
	FUNC5(FUNC1(ttyout), msgbuf, len);
	FUNC2(0);
	FUNC3(xferabort, 1);
}