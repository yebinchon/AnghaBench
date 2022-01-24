#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int fv_val; int /*<<< orphan*/ * fv_flag; } ;

/* Variables and functions */
 int CCDF_MIRROR ; 
 int CCDF_UNIFORM ; 
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 TYPE_1__* flagvaltab ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(char *flags)
{
	char *cp, *tok;
	int i, tmp, val;

	errno = 0;	/* to check for ERANGE */
	val = (int)FUNC5(flags, &cp, 0);
	if ((errno != ERANGE) && (*cp == '\0')) {
		if (val & ~(CCDF_UNIFORM|CCDF_MIRROR))
			return (-1);
		return (val);
	}

	/* Check for values represented by strings. */
	if ((cp = FUNC3(flags)) == NULL)
		FUNC0(1, "no memory to parse flags");
	tmp = 0;
	for (tok = cp; (tok = FUNC4(tok, ",")) != NULL; tok = NULL) {
		for (i = 0; flagvaltab[i].fv_flag != NULL; ++i)
			if (FUNC2(tok, flagvaltab[i].fv_flag) == 0)
				break;
		if (flagvaltab[i].fv_flag == NULL) {
			FUNC1(cp);
			return (-1);
		}
		tmp |= flagvaltab[i].fv_val;
	}

	/* If we get here, the string was ok. */
	FUNC1(cp);
	return (tmp);
}