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
 char** FUNC0 (char*,char const*,int) ; 
 char** FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static char ** FUNC6(void *ctx, const char *str,
					      int pos)
{
	char **res;
	const char *end;
	char *cmd;

	end = FUNC5(str, ' ');
	if (end == NULL || str + pos < end)
		return FUNC1();

	cmd = FUNC3(pos + 1);
	if (cmd == NULL)
		return NULL;
	FUNC4(cmd, str, pos);
	cmd[end - str] = '\0';
	res = FUNC0(cmd, str, pos);
	FUNC2(cmd);
	return res;
}