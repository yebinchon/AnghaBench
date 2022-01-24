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
 int MAXEXPDIG ; 
 void* FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1(char *p0, int expo, int fmtch)
{
	char *p, *t;
	char expbuf[MAXEXPDIG];

	p = p0;
	*p++ = fmtch;
	if (expo < 0) {
		expo = -expo;
		*p++ = '-';
	}
	else
		*p++ = '+';
	t = expbuf + MAXEXPDIG;
	if (expo > 9) {
		do {
			*--t = FUNC0(expo % 10);
		} while ((expo /= 10) > 9);
		*--t = FUNC0(expo);
		for (; t < expbuf + MAXEXPDIG; *p++ = *t++)
			;
	}
	else {
		/*
		 * Exponents for decimal floating point conversions
		 * (%[eEgG]) must be at least two characters long,
		 * whereas exponents for hexadecimal conversions can
		 * be only one character long.
		 */
		if (fmtch == 'e' || fmtch == 'E')
			*p++ = '0';
		*p++ = FUNC0(expo);
	}
	return (p - p0);
}