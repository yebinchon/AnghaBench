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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ interactive ; 
 char* FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * prompt ; 

__attribute__((used)) static void
FUNC5(void)
{
	char *	line;
	int	count;

	FUNC3(interactive ? prompt : NULL);

	for (;;) {
		line = FUNC2(&count);
		if (NULL == line)
			break;
		FUNC0(line);
		FUNC1(line);
	}

	FUNC4();
}