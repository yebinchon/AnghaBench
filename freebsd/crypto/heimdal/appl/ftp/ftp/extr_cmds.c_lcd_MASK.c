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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int MaxPathLen ; 
 scalar_t__ FUNC0 (char*) ; 
 int code ; 
 int /*<<< orphan*/ * FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char* home ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

void
FUNC6(int argc, char **argv)
{
	char buf[MaxPathLen];

	if (argc < 2)
		argc++, argv[1] = home;
	if (argc != 2) {
		FUNC3("usage: %s local-directory\n", argv[0]);
		code = -1;
		return;
	}
	if (!FUNC2(&argv[1])) {
		code = -1;
		return;
	}
	if (FUNC0(argv[1]) < 0) {
		FUNC4("local: %s", argv[1]);
		code = -1;
		return;
	}
	if (FUNC1(buf, sizeof(buf)) != NULL)
		FUNC3("Local directory now %s\n", buf);
	else
		FUNC5("getwd: %s", buf);
	code = 0;
}