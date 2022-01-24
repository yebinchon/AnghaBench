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
 int PERIOD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int) ; 

int
FUNC5(const char *srch)
{
        int pch = PERIOD, ch = *srch++;
	int domains = 1;

	/* 256 char limit re resolv.conf(5) */
	if (FUNC3(srch) > 256)
		return (0);

	while (FUNC4(ch))
		ch = *srch++;

        while (ch != '\0') {
                int nch = *srch++;

                if (FUNC2(ch) || FUNC4(ch)) {
                        ;
                } else if (FUNC2(pch)) {
                        if (!FUNC0(ch))
                                return (0);
                } else if (FUNC2(nch) || nch == '\0') {
                        if (!FUNC0(ch))
                                return (0);
                } else {
                        if (!FUNC1(ch))
                                return (0);
                }
		if (!FUNC4(ch)) {
			pch = ch;
		} else {
			while (FUNC4(nch)) {
				nch = *srch++;
			}
			if (nch != '\0')
				domains++;
			pch = PERIOD;
		}
		ch = nch;
        }
	/* 6 domain limit re resolv.conf(5) */
	if (domains > 6)
		return (0);
        return (1);
}