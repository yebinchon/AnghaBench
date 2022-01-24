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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(const char *s1, const char *s2)
{
	int c1;
	int c2;
	int end1 = 0;
	int end2 = 0;
	for (;;) {
		c1 = *s1++;
		c2 = *s2++;
		if (FUNC1(c1) && FUNC2(c1))
			c1 = FUNC3(c1);
		if (FUNC1(c2) && FUNC2(c2))
			c2 = FUNC3(c2);
		end1 = !(FUNC0(c1) || c1 == '_' || c1 == '-');
		end2 = !(FUNC0(c2) || c2 == '_' || c2 == '-');
		if (end1 || end2 || c1 != c2)
			break;
	}
	return end1 && end2; /* reached end of both words? */
}