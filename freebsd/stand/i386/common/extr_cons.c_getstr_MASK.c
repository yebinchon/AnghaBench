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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(char *cmdstr, size_t cmdstrsize)
{
	char *s;
	int c;

	s = cmdstr;
	for (;;) {
		c = FUNC2(0);

		/* Translate some extended codes. */
		switch (c) {
		case 0x5300:    /* delete */
			c = '\177';
			break;
		default:
			c &= 0xff;
			break;
		}

		switch (c) {
		case '\177':
		case '\b':
			if (s > cmdstr) {
				s--;
				FUNC0("\b \b");
			}
			break;
		case '\n':
		case '\r':
			*s = 0;
			return;
		default:
			if (c >= 0x20 && c <= 0x7e) {
				if (s - cmdstr < cmdstrsize - 1)
					*s++ = c;
				FUNC1(c);
			}
			break;
		}
	}
}