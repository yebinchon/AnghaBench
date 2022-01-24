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
 char* FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char const*,int) ; 
 char* FUNC6 (char const*,char*) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(const char *val, const char *pnpinfo)
{
	int rv;
	char key[256];
	char *cp;

	if (pnpinfo == NULL)
		return -1;

	cp = FUNC1(val, ';');
	key[0] = ' ';
	if (cp == NULL)
		FUNC3(key + 1, val, sizeof(key) - 1);
	else {
		FUNC0(key + 1, val, cp - val);
		key[cp - val + 1] = '\0';
	}
	FUNC2(key, "=", sizeof(key));
	if (FUNC5(key + 1, pnpinfo, FUNC4(key + 1)) == 0)
		rv = FUNC7(pnpinfo + FUNC4(key + 1), NULL, 0);
	else {
		cp = FUNC6(pnpinfo, key);
		if (cp == NULL)
			rv = -1;
		else
			rv = FUNC7(cp + FUNC4(key), NULL, 0);
	}
	return rv;
}