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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char** FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctrl_conn ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  interfaces ; 

__attribute__((used)) static char ** FUNC5(const char *str, int pos)
{
	int arg = FUNC3(str, pos);
	char **res = NULL;
	FUNC0(interfaces);

	switch (arg) {
	case 1:
		FUNC4(ctrl_conn, &interfaces);
		res = FUNC1(&interfaces);
		FUNC2(&interfaces);
		break;
	}

	return res;
}