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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int LINE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 
 int /*<<< orphan*/ * stdout ; 

void
FUNC10(char *filename)
{
	FILE *fin;
	int c;
	char line[LINE_MAX];

	FUNC9(line, sizeof(line), "/bin/ls -la -- %s", filename);
	fin = FUNC3(line, "r", 1, 0);
	FUNC5(211, "status of %s:", filename);
	while ((c = FUNC4(fin)) != EOF) {
		if (c == '\n') {
			if (FUNC1(stdout)){
				FUNC6(421, "control connection");
				FUNC2(fin);
				FUNC0(1);
				/* NOTREACHED */
			}
			if (FUNC1(fin)) {
				FUNC6(551, filename);
				FUNC2(fin);
				return;
			}
			FUNC7('\r', stdout);
		}
		FUNC7(c, stdout);
	}
	FUNC2(fin);
	FUNC8(211, "End of Status");
}