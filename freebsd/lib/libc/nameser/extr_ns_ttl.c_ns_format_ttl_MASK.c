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
typedef  int u_long ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char,char**,size_t*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 char FUNC4 (int) ; 

int
FUNC5(u_long src, char *dst, size_t dstlen) {
	char *odst = dst;
	int secs, mins, hours, days, weeks, x;
	char *p;

	secs = src % 60;   src /= 60;
	mins = src % 60;   src /= 60;
	hours = src % 24;  src /= 24;
	days = src % 7;    src /= 7;
	weeks = src;       src = 0;

	x = 0;
	if (weeks) {
		FUNC0(FUNC1(weeks, 'W', &dst, &dstlen));
		x++;
	}
	if (days) {
		FUNC0(FUNC1(days, 'D', &dst, &dstlen));
		x++;
	}
	if (hours) {
		FUNC0(FUNC1(hours, 'H', &dst, &dstlen));
		x++;
	}
	if (mins) {
		FUNC0(FUNC1(mins, 'M', &dst, &dstlen));
		x++;
	}
	if (secs || !(weeks || days || hours || mins)) {
		FUNC0(FUNC1(secs, 'S', &dst, &dstlen));
		x++;
	}

	if (x > 1) {
		int ch;

		for (p = odst; (ch = *p) != '\0'; p++)
			if (FUNC2(ch) && FUNC3(ch))
				*p = FUNC4(ch);
	}

	return (dst - odst);
}