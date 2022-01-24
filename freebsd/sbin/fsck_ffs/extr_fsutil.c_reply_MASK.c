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
 scalar_t__ bkgrdflag ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ fswritefd ; 
 char FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ nflag ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ resolved ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 scalar_t__ yflag ; 

int
FUNC6(const char *question)
{
	int persevere;
	char c;

	if (preen)
		FUNC3("INTERNAL ERROR: GOT TO reply()");
	persevere = !FUNC5(question, "CONTINUE");
	FUNC4("\n");
	if (!persevere && (nflag || (fswritefd < 0 && bkgrdflag == 0))) {
		FUNC4("%s? no\n\n", question);
		resolved = 0;
		return (0);
	}
	if (yflag || (persevere && nflag)) {
		FUNC4("%s? yes\n\n", question);
		return (1);
	}
	do	{
		FUNC4("%s? [yn] ", question);
		(void) FUNC1(stdout);
		c = FUNC2(stdin);
		while (c != '\n' && FUNC2(stdin) != '\n') {
			if (FUNC0(stdin)) {
				resolved = 0;
				return (0);
			}
		}
	} while (c != 'y' && c != 'Y' && c != 'n' && c != 'N');
	FUNC4("\n");
	if (c == 'y' || c == 'Y')
		return (1);
	resolved = 0;
	return (0);
}