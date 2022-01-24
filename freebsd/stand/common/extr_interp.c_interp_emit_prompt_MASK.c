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
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 char* FUNC4 (char*) ; 

void
FUNC5(void)
{
	char		*pr, *p, *cp, *ev;

	if ((cp = FUNC1("prompt")) == NULL)
		cp = ">";
	pr = p = FUNC4(cp);

	while (*p != 0) {
		if ((*p == '$') && (*(p+1) == '{')) {
			for (cp = p + 2; (*cp != 0) && (*cp != '}'); cp++)
				;
			*cp = 0;
			ev = FUNC1(p + 2);

			if (ev != NULL)
				FUNC2("%s", ev);
			p = cp + 1;
			continue;
		}
		FUNC3(*p++);
	}
	FUNC3(' ');
	FUNC0(pr);
}