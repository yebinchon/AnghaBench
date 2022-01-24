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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int argc, char *argv[])
{

	if (argc != 2)
		FUNC8();

	if (FUNC7(argv[1], "class") == 0)
		FUNC0();
	else if (FUNC7(argv[1], "class_r") == 0)
		FUNC1();
	else if (FUNC7(argv[1], "control") == 0)
		FUNC2();
	else if (FUNC7(argv[1], "event") == 0)
		FUNC3();
	else if (FUNC7(argv[1], "event_r") == 0)
		FUNC4();
	else if (FUNC7(argv[1], "user") == 0)
		FUNC5();
	else if (FUNC7(argv[1], "user_r") == 0)
		FUNC6();
	else
		FUNC8();

	return (0);
}