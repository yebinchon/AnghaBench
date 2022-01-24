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
typedef  int isc_uint64_t ;

/* Variables and functions */
 char* digits ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 char* FUNC2 (char*,char) ; 
 char FUNC3 (char) ; 

isc_uint64_t
FUNC4(char *source, char **end, int base) {
	isc_uint64_t tmp;
	isc_uint64_t overflow;
	char *s = source;
	char *o;
	char c;

	if ((base < 0) || (base == 1) || (base > 36)) {
		*end = source;
		return (0);
	}

	while (*s != 0 && FUNC0(*s&0xff) && FUNC1(*s&0xff))
		s++;
	if (*s == '+' /* || *s == '-' */)
		s++;
	if (base == 0) {
		if (*s == '0' && (*(s+1) == 'X' || *(s+1) == 'x')) {
			s += 2;
			base = 16;
		} else if (*s == '0')
			base = 8;
		else
			base = 10;
	}
	if (*s == 0) {
		*end = source;
		return (0);
	}
	overflow = ~0;
	overflow /= base;
	tmp = 0;

	while ((c = *s) != 0) {
		c = FUNC3(c&0xff);
		/* end ? */
		if ((o = FUNC2(digits, c)) == NULL) {
			*end = s;
			return (tmp);
		}
		/* end ? */
		if ((o - digits) >= base) {
			*end = s;
			return (tmp);
		}
		/* overflow ? */
		if (tmp > overflow) {
			*end = source;
			return (0);
		}
		tmp *= base;
		/* overflow ? */
		if ((tmp + (o - digits)) < tmp) {
			*end = source;
			return (0);
		}
		tmp += o - digits;
		s++;
	}
	*end = s;
	return (tmp);
}