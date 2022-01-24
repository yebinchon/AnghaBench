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
 int EOF ; 
 int FAIL ; 
 int GOOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  terminal ; 

int
FUNC3(char *question)
{
	int c;

	do	{
		FUNC1(stderr, "%s? [yn] ", question);
		(void) FUNC0(stderr);
		c = FUNC2(terminal);
		while (c != '\n' && FUNC2(terminal) != '\n')
			if (c == EOF)
				return (FAIL);
	} while (c != 'y' && c != 'n');
	if (c == 'y')
		return (GOOD);
	return (FAIL);
}