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
 long FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static long
FUNC7(const char *s)
{
	int i, dots = 0;
	int len = FUNC4(s);
	char strt[16]="", stru[16]="";
	
	if (len>15)
		return -1;
	for (i = 0; i<len && (FUNC1(s[i]) || s[i]=='.') ; i++)
		if (s[i]=='.') {
			if (dots)
				return -1;
			else
				dots++;
		}

	if (!i)
		return -1;
	FUNC5(strt, s, i);
	if (i<len)
		FUNC3(stru, s+i);
	else
		FUNC3(stru, "ms");
	
	if (!FUNC2(stru, "us"))
		return FUNC0(strt);
	if (!FUNC2(stru, "ms"))
		return (FUNC6(strt, NULL) * 1000);
	if (!FUNC2(stru, "s"))
		return (FUNC6(strt, NULL)*1000000);

	return -1;
}