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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char FUNC2 () ; 

void
FUNC3(char *line, int len)
{
	char *cp = line;

	while (len > 1) {
		*cp = FUNC2();
		if (*cp == '\n') {
			cp[1] = '\0';
			return;
		}
		cp++;
		len--;
	}
	*cp = '\0';
	FUNC0("Protocol to remote tape server botched.\n");
	FUNC0("(rmtgets got \"%s\").\n", line);
	FUNC1(0);
}