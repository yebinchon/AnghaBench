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
typedef  int u_int ;
typedef  int naddr ;

/* Variables and functions */
 int NUM_BUFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC4 (char*) ; 

char *
FUNC5(naddr	addr,			/* in network byte order */
	 naddr	mask,
	 int	force)			/* 0=show mask if nonstandard, */
{					/*	1=always show mask, 2=never */
#define NUM_BUFS 4
	static int bufno;
	static struct {
	    char    str[15+20];
	} bufs[NUM_BUFS];
	char *s, *sp;
	naddr dmask;
	size_t l;
	int i;

	FUNC3(bufs[bufno].str, FUNC0(addr), sizeof(bufs[bufno].str));
	s = bufs[bufno].str;
	l = sizeof(bufs[bufno].str);
	bufno = (bufno+1) % NUM_BUFS;

	if (force == 1 || (force == 0 && mask != FUNC2(addr))) {
		sp = &s[FUNC4(s)];

		dmask = mask & -mask;
		if (mask + dmask == 0) {
			for (i = 0; i != 32 && ((1<<i) & mask) == 0; i++)
				continue;
			(void)FUNC1(sp, s + l - sp, "/%d", 32-i);

		} else {
			(void)FUNC1(sp, s + l - sp, " (mask %#x)",
			    (u_int)mask);
		}
	}

	return s;
#undef NUM_BUFS
}