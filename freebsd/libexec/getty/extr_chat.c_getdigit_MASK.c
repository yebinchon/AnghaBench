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
 char* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static int
FUNC2(unsigned char **ptr, int base, int max)
{
	int i, val = 0;
	char * q;

	static const char xdigits[] = "0123456789abcdef";

	for (i = 0, q = *ptr; i++ < max; ++q) {
		int sval;
		const char * s = FUNC0(xdigits, FUNC1(*q));

		if (s == NULL || (sval = s - xdigits) >= base)
			break;
		val = (val * base) + sval;
	}
	*ptr = q;
	return val;
}