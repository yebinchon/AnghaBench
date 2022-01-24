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
 int /*<<< orphan*/  FUNC0 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

void
FUNC2(const char *s, unsigned v, const char *bits)
{
	int i, any = 0;
	char c;

	if (bits && *bits == 8)
		FUNC0("%s=%o", s, v);
	else
		FUNC0("%s=%x", s, v);
	if (bits) {
		bits++;
		FUNC1('<');
		while ((i = *bits++) != '\0') {
			if (v & (1 << (i-1))) {
				if (any)
					FUNC1(',');
				any = 1;
				for (; (c = *bits) > 32; bits++)
					FUNC1(c);
			} else
				for (; *bits > 32; bits++)
					;
		}
		FUNC1('>');
	}
}