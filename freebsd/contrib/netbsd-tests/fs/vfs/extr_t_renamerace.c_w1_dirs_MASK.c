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
 int /*<<< orphan*/  quittingtime ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  wrkpid ; 

__attribute__((used)) static void *
FUNC4(void *arg)
{

	FUNC1(wrkpid);

	while (!quittingtime) {
		if (FUNC2("rename.test1", 0777) == -1)
			FUNC0("mkdir");
		FUNC3("rename.test1");
	}

	return NULL;
}