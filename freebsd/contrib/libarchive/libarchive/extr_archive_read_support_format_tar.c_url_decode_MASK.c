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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (char const) ; 

__attribute__((used)) static char *
FUNC3(const char *in)
{
	char *out, *d;
	const char *s;

	out = (char *)FUNC0(FUNC1(in) + 1);
	if (out == NULL)
		return (NULL);
	for (s = in, d = out; *s != '\0'; ) {
		if (s[0] == '%' && s[1] != '\0' && s[2] != '\0') {
			/* Try to convert % escape */
			int digit1 = FUNC2(s[1]);
			int digit2 = FUNC2(s[2]);
			if (digit1 >= 0 && digit2 >= 0) {
				/* Looks good, consume three chars */
				s += 3;
				/* Convert output */
				*d++ = ((digit1 << 4) | digit2);
				continue;
			}
			/* Else fall through and treat '%' as normal char */
		}
		*d++ = *s++;
	}
	*d = '\0';
	return (out);
}