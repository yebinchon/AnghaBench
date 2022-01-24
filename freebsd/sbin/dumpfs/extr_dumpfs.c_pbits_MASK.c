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
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(void *vp, int max)
{
	int i;
	char *p;
	int count, j;

	for (count = i = 0, p = vp; i < max; i++)
		if (FUNC0(p, i)) {
			if (count)
				FUNC1(",%s", count % 6 ? " " : "\n\t");
			count++;
			FUNC1("%d", i);
			j = i;
			while ((i+1)<max && FUNC0(p, i+1))
				i++;
			if (i != j)
				FUNC1("-%d", i);
		}
	FUNC1("\n");
}