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
 int* ARGC ; 
 int /*<<< orphan*/  argno ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  infile ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  symtab ; 

void FUNC5(void)
{
	int i;
	char *p;

	for (i = 1; i < *ARGC; i++) {
		p = FUNC0(i); /* find 1st real filename */
		if (p == NULL || *p == '\0') {  /* deleted or zapped */
			argno++;
			continue;
		}
		if (!FUNC1(p)) {
			FUNC4(FUNC2("FILENAME", symtab), p);
			return;
		}
		FUNC3(p);	/* a commandline assignment before filename */
		argno++;
	}
	infile = stdin;		/* no filenames, so use stdin */
}