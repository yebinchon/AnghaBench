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
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

int
FUNC3(int argc, char **argv) {
	int error;

	error = 0;

	error = FUNC1();
	if (error != 0)
		FUNC2(1, "dm_test_versions failed");

	error = FUNC0();
	if (error != 0)
		FUNC2(1, "dm_test_targets failed");

	return error;
}