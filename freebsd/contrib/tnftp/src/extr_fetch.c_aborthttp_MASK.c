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
 int /*<<< orphan*/  httpabort ; 
 int sigint_raised ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  ttyout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 

void
FUNC5(int notused)
{
	char msgbuf[100];
	size_t len;

	sigint_raised = 1;
	FUNC0(0);
	len = FUNC3(msgbuf, "\nHTTP fetch aborted.\n", sizeof(msgbuf));
	FUNC4(FUNC1(ttyout), msgbuf, len);
	FUNC2(httpabort, 1);
}