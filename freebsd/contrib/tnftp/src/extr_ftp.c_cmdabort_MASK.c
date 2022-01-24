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
 int /*<<< orphan*/  abrtflag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ fromatty ; 
 int /*<<< orphan*/  ptabort ; 
 scalar_t__ ptflag ; 
 int sigint_raised ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ttyout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC4(int notused)
{
	int oerrno = errno;

	sigint_raised = 1;
	FUNC0(0);
	if (fromatty)
		FUNC3(FUNC1(ttyout), "\n", 1);
	abrtflag++;
	if (ptflag)
		FUNC2(ptabort, 1);
	errno = oerrno;
}