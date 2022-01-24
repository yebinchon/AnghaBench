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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

int
FUNC6(int argc, char *argv[])
{
	char result[MAXPATHLEN];
	char cwd[MAXPATHLEN];

	if (argc < 2) {
		FUNC1(stderr, "usage: rel2abs path [base]\n");
		FUNC0(1);
	}
	if (argc == 2) {
		if (!FUNC2(cwd, MAXPATHLEN)) {
			FUNC1(stderr, "cannot get current directory.\n");
			FUNC0(1);
		}
	} else
		FUNC5(cwd, argv[2]);
	
	if (FUNC4(argv[1], cwd, result, MAXPATHLEN)) {
		FUNC3("%s\n", result);
	} else
		FUNC3("ERROR\n");
	FUNC0(0);
}