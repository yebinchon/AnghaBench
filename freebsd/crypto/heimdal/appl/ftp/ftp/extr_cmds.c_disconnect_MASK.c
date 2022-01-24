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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ connected ; 
 int /*<<< orphan*/ * cout ; 
 int data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ macnum ; 
 int /*<<< orphan*/  proxy ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(int argc, char **argv)
{

	if (!connected)
		return;
	FUNC0("QUIT");
	if (cout) {
		FUNC1(cout);
	}
	cout = NULL;
	connected = 0;
	FUNC2();
	data = -1;
	if (!proxy) {
		macnum = 0;
	}
}