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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 size_t curpfile ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int lineno ; 
 size_t npfile ; 
 int /*<<< orphan*/ * pfile ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * yyin ; 

int FUNC5(void)		/* get 1 character from awk program */
{
	int c;

	for (;;) {
		if (yyin == NULL) {
			if (curpfile >= npfile)
				return EOF;
			if (FUNC4(pfile[curpfile], "-") == 0)
				yyin = stdin;
			else if ((yyin = FUNC2(pfile[curpfile], "r")) == NULL)
				FUNC0("can't open file %s", pfile[curpfile]);
			lineno = 1;
		}
		if ((c = FUNC3(yyin)) != EOF)
			return c;
		if (yyin != stdin)
			FUNC1(yyin);
		yyin = NULL;
		curpfile++;
	}
}