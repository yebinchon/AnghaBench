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
 char* FUNC1 (char const*) ; 
 int FUNC2 (char*,char*,int*,int*,int*) ; 
 char* FUNC3 (char*,char) ; 

bool
FUNC4(int bus, int slot, int func)
{
	int b, f, i, n, s;
	char *val, *cp, *cp2;
	bool found;

	/*
	 * XXX
	 * The length of an environment variable is limited to 128 bytes which
	 * puts an upper limit on the number of passthru devices that may be
	 * specified using a single environment variable.
	 *
	 * Work around this by scanning multiple environment variable
	 * names instead of a single one - yuck!
	 */
	const char *names[] = { "pptdevs", "pptdevs2", "pptdevs3", NULL };

	/* set pptdevs="1/2/3 4/5/6 7/8/9 10/11/12" */
	found = false;
	for (i = 0; names[i] != NULL && !found; i++) {
		cp = val = FUNC1(names[i]);
		while (cp != NULL && *cp != '\0') {
			if ((cp2 = FUNC3(cp, ' ')) != NULL)
				*cp2 = '\0';

			n = FUNC2(cp, "%d/%d/%d", &b, &s, &f);
			if (n == 3 && bus == b && slot == s && func == f) {
				found = true;
				break;
			}
		
			if (cp2 != NULL)
				*cp2++ = ' ';

			cp = cp2;
		}
		FUNC0(val);
	}
	return (found);
}