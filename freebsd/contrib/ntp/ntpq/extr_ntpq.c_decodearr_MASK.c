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
typedef  int /*<<< orphan*/  l_fp ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(
	char *cp,
	int  *narr,
	l_fp *lfpa,
	int   amax
	)
{
	char *bp;
	char buf[60];

	*narr = 0;

	while (*narr < amax && *cp) {
		if (FUNC1(FUNC2(cp))) {
			do
				++cp;
			while (*cp && FUNC1(FUNC2(cp)));
		} else {
			bp = buf;
			do {
				if (bp != (buf + sizeof(buf) - 1))
					*bp++ = *cp;
				++cp;
			} while (*cp && !FUNC1(FUNC2(cp)));
			*bp = '\0';

			if (!FUNC0(buf, lfpa))
				return 0;
			++(*narr);
			++lfpa;
		}
	}
	return 1;
}