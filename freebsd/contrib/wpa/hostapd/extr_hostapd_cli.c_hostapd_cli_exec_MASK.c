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
 int FUNC0 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char const*,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const char *program, const char *arg1,
			    const char *arg2)
{
	char *arg;
	size_t len;
	int res;

	len = FUNC4(arg1) + FUNC4(arg2) + 2;
	arg = FUNC2(len);
	if (arg == NULL)
		return -1;
	FUNC3(arg, len, "%s %s", arg1, arg2);
	res = FUNC0(program, arg, 1);
	FUNC1(arg);

	return res;
}