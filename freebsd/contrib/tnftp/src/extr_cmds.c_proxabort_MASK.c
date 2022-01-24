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
 int /*<<< orphan*/  abortprox ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ connected ; 
 int proxflag ; 
 int /*<<< orphan*/  proxy ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int sigint_raised ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void
FUNC3(int notused)
{

	sigint_raised = 1;
	FUNC0(0);
	if (!proxy) {
		FUNC1(1);
	}
	if (connected) {
		proxflag = 1;
	}
	else {
		proxflag = 0;
	}
	FUNC1(0);
	FUNC2(abortprox, 1);
}