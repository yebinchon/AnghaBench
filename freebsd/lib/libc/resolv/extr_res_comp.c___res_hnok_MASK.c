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

int
FUNC3(const char *dn) {
	int pch = PERIOD, ch = *dn++;

	while (ch != '\0') {
		int nch = *dn++;

		if (FUNC2(ch)) {
			(void)NULL;
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
		pch = ch, ch = nch;
	}
	return (1);
}