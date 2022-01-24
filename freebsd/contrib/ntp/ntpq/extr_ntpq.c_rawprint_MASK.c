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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(
	int datatype,
	size_t length,
	const char *data,
	int status,
	int quiet,
	FILE *fp
	)
{
	const char *cp;
	const char *cpend;

	/*
	 * Essentially print the data as is.  We reformat unprintables, though.
	 */
	cp = data;
	cpend = data + length;

	if (!quiet)
		(void) FUNC0(fp, "status=0x%04x,\n", status);

	while (cp < cpend) {
		if (*cp == '\r') {
			/*
			 * If this is a \r and the next character is a
			 * \n, supress this, else pretty print it.  Otherwise
			 * just output the character.
			 */
			if (cp == (cpend - 1) || *(cp + 1) != '\n')
			    FUNC3(1, cp, fp);
		} else if (FUNC2(FUNC4(cp)) || FUNC1(FUNC4(cp)))
			FUNC5(*cp, fp);
		else
			FUNC3(1, cp, fp);
		cp++;
	}
}