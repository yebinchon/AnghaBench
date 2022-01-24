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
 int code ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

void
FUNC5(int argc, char **argv)
{
	char *cmd;

	if (argc < 2)
		argc++, argv[1] = NULL;
	if (argc < 3)
		argc++, argv[2] = "-";
	if (argc > 3) {
		FUNC2("usage: %s remote-directory local-file\n", argv[0]);
		code = -1;
		return;
	}
	cmd = argv[0][0] == 'n' ? "NLST" : "LIST";
	if (FUNC4(argv[2], "-") && !FUNC1(&argv[2])) {
		code = -1;
		return;
	}
	if (FUNC4(argv[2], "-") && *argv[2] != '|')
	    if (!FUNC1(&argv[2]) || !FUNC0("output to local-file:",
						 argv[2])) {
		code = -1;
		return;
	    }
	FUNC3(cmd, argv[2], argv[1], "w", 0, 1);
}