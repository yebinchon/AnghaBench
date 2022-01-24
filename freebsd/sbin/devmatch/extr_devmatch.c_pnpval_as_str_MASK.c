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
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char const*,int) ; 
 char* FUNC8 (char const*,char*) ; 

__attribute__((used)) static char *
FUNC9(const char *val, const char *pnpinfo)
{
	static char retval[256];
	char key[256];
	char *cp;

	if (pnpinfo == NULL) {
		*retval = '\0';
		return retval;
	}

	cp = FUNC2(val, ';');
	key[0] = ' ';
	if (cp == NULL)
		FUNC5(key + 1, val, sizeof(key) - 1);
	else {
		FUNC0(key + 1, val, cp - val);
		key[cp - val + 1] = '\0';
	}
	FUNC4(key, "=", sizeof(key));
	if (FUNC7(key + 1, pnpinfo, FUNC6(key + 1)) == 0)
		FUNC1(retval, pnpinfo + FUNC6(key + 1));
	else {
		cp = FUNC8(pnpinfo, key);
		if (cp == NULL)
			FUNC3(retval, "MISSING");
		else
			FUNC1(retval, cp + FUNC6(key));
	}
	return retval;
}