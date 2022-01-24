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
 int FUNC0 (char const) ; 

__attribute__((used)) static const char *
FUNC1(char *dst, const char *src, size_t dlen)
{
	int d1, d2;
	char c;
	const char *s;

	for (s = src; *s != '\0' && *s != '@' && *s != ':'; s++) {
		if (s[0] == '%' && (d1 = FUNC0(s[1])) >= 0 &&
		    (d2 = FUNC0(s[2])) >= 0 && (d1 > 0 || d2 > 0)) {
			c = d1 << 4 | d2;
			s += 2;
		} else {
			c = *s;
		}
		if (dlen-- > 0)
			*dst++ = c;
	}
	return (s);
}