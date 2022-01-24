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
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 (int,char**) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(int argc, char *argv[])
{

	if (argc < 1)
		FUNC5();

	if (FUNC4(argv[0], "capture") == 0)
		FUNC0(argc, argv);
	else if (FUNC4(argv[0], "script") == 0)
		FUNC1(argc, argv);
	else if (FUNC4(argv[0], "scripts") == 0)
		FUNC2(argc, argv);
	else if (FUNC4(argv[0], "unscript") == 0)
		FUNC3(argc, argv);
	else
		FUNC5();
}