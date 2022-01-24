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
struct _s_x {int x; int /*<<< orphan*/ * s; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 

int
FUNC2(struct _s_x *table, const char *string)
{
	struct _s_x *pt, *m;
	int i, c;

	i = FUNC0(string);
	c = 0;

	for (pt = table ; i != 0 && pt->s != NULL ; pt++) {
		if (FUNC1(pt->s, string, i) != 0)
			continue;
		m = pt;
		c++;
	}

	if (c == 1)
		return (m->x);

	return (c > 0 ? -2: -1);
}