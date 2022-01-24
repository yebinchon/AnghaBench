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
typedef  char CHAR ;

/* Variables and functions */
 int MAXEXPDIG ; 
 void* FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1(CHAR *p0, int exp, CHAR fmtch)
{
	CHAR *p, *t;
	CHAR expbuf[MAXEXPDIG];

	p = p0;
	*p++ = fmtch;
	if (exp < 0) {
		exp = -exp;
		*p++ = '-';
	}
	else
		*p++ = '+';
	t = expbuf + MAXEXPDIG;
	if (exp > 9) {
		do {
			*--t = FUNC0(exp % 10);
		} while ((exp /= 10) > 9);
		*--t = FUNC0(exp);
		for (; t < expbuf + MAXEXPDIG; *p++ = *t++);
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
		*p++ = FUNC0(exp);
	}
	return (p - p0);
}