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
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC1(int64_t v, char *p, int s)
{
	int len;
	char *h;

	len = s;
	h = p;

	/* Octal values can't be negative, so use 0. */
	if (v < 0) {
		while (len-- > 0)
			*p++ = '0';
		return (-1);
	}

	p += s;		/* Start at the end and work backwards. */
	do {
		*--p = (char)('0' + (v & 7));
		v >>= 3;
	} while (--s > 0 && v > 0);

	if (v == 0) {
		FUNC0(h, p, len - s);
		p = h + len - s;
		while (s-- > 0)
			*p++ = ' ';
		return (0);
	}
	/* If it overflowed, fill field with max value. */
	while (len-- > 0)
		*p++ = '7';

	return (-1);
}