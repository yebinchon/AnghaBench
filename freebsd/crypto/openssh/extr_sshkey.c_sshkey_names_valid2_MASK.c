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
struct keytype {int type; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int KEY_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct keytype* keytypes ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char**,char*) ; 

int
FUNC6(const char *names, int allow_wildcard)
{
	char *s, *cp, *p;
	const struct keytype *kt;
	int type;

	if (names == NULL || FUNC3(names, "") == 0)
		return 0;
	if ((s = cp = FUNC4(names)) == NULL)
		return 0;
	for ((p = FUNC5(&cp, ",")); p && *p != '\0';
	    (p = FUNC5(&cp, ","))) {
		type = FUNC2(p);
		if (type == KEY_UNSPEC) {
			if (allow_wildcard) {
				/*
				 * Try matching key types against the string.
				 * If any has a positive or negative match then
				 * the component is accepted.
				 */
				for (kt = keytypes; kt->type != -1; kt++) {
					if (FUNC1(kt->name,
					    p, 0) != 0)
						break;
				}
				if (kt->type != -1)
					continue;
			}
			FUNC0(s);
			return 0;
		}
	}
	FUNC0(s);
	return 1;
}