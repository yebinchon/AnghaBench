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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 int FUNC5 (char const*) ; 
 char* FUNC6 (char**,char*) ; 

__attribute__((used)) static char *
FUNC7(const char *proposal, const char *filter, int blacklist)
{
	size_t len = FUNC5(proposal) + 1;
	char *fix_prop = FUNC1(len);
	char *orig_prop = FUNC3(proposal);
	char *cp, *tmp;
	int r;

	if (fix_prop == NULL || orig_prop == NULL) {
		FUNC0(orig_prop);
		FUNC0(fix_prop);
		return NULL;
	}

	tmp = orig_prop;
	*fix_prop = '\0';
	while ((cp = FUNC6(&tmp, ",")) != NULL) {
		r = FUNC2(cp, filter, 0);
		if ((blacklist && r != 1) || (!blacklist && r == 1)) {
			if (*fix_prop != '\0')
				FUNC4(fix_prop, ",", len);
			FUNC4(fix_prop, cp, len);
		}
	}
	FUNC0(orig_prop);
	return fix_prop;
}