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
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(int argc, char **argv)
{
	if (argc != 2)
		return 1;
	if (FUNC0(argv[1], "dl_iterate_phdr") == 0)
		FUNC1();
	if (FUNC0(argv[1], "dlopen") == 0)
		FUNC3();
	if (FUNC0(argv[1], "dlclose") == 0)
		FUNC2();
	return 1;
}