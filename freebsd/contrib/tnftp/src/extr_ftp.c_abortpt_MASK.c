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
 scalar_t__ abrtflag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ fromatty ; 
 scalar_t__ mflag ; 
 int /*<<< orphan*/  ptabflg ; 
 int /*<<< orphan*/  ptabort ; 
 int sigint_raised ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ttyout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC4(int notused)
{

	sigint_raised = 1;
	FUNC0(0);
	if (fromatty)
		FUNC3(FUNC1(ttyout), "\n", 1);
	ptabflg++;
	mflag = 0;
	abrtflag = 0;
	FUNC2(ptabort, 1);
}