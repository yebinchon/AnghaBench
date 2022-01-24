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
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int testnum ; 
 int /*<<< orphan*/  tests ; 

int
FUNC4(void)
{
	unsigned i;

	FUNC1("1..%zu\n", (size_t)(FUNC0(tests) * 2));
	testnum = 1;
	for (i = 0; i < FUNC0(tests); i++) {
		FUNC3(i);
		FUNC2(i);
	}

	return (0);
}