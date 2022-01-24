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
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char*,char*) ; 

int
FUNC4(const char *mntopts, const char *option)
{
	int negative, found;
	char *opt, *optbuf;

	if (option[0] == 'n' && option[1] == 'o') {
		negative = 1;
		option += 2;
	} else
		negative = 0;
	optbuf = FUNC2(mntopts);
	found = 0;
	for (opt = optbuf; (opt = FUNC3(opt, ",")) != NULL; opt = NULL) {
		if (opt[0] == 'n' && opt[1] == 'o') {
			if (!FUNC1(opt + 2, option))
				found = negative;
		} else if (!FUNC1(opt, option))
			found = !negative;
	}
	FUNC0(optbuf);
	return (found);
}