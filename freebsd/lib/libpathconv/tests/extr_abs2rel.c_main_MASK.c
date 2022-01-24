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
 int MAXPATHLEN ; 
 scalar_t__ FUNC0 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

int
FUNC6(int argc, char *argv[])
{
	char result[MAXPATHLEN];
	char cwd[MAXPATHLEN];

	if (argc < 2) {
		FUNC2(stderr, "usage: abs2rel path [base]\n");
		FUNC1(1);
	}
	if (argc == 2) {
		if (!FUNC3(cwd, MAXPATHLEN)) {
			FUNC2(stderr, "cannot get current directory.\n");
			FUNC1(1);
		}
	} else
		FUNC5(cwd, argv[2]);
	
	if (FUNC0(argv[1], cwd, result, MAXPATHLEN)) {
		FUNC4("%s\n", result);
	} else
		FUNC4("ERROR\n");
	FUNC1(0);
}