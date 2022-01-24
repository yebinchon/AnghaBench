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
typedef  int /*<<< orphan*/  keybuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int FUNC1 () ; 

__attribute__((used)) static const char *
FUNC2 (size_t *lenptr)
{
	static char keybuf[512];
	int keylen, i;
	char c;

	keylen = FUNC1 () % (sizeof (keybuf) - 1) + 1;

	for (i = 0; i < keylen; i ++) {
		do {
			c = FUNC1 () & 0xFF;
		} while (!FUNC0 (c));

		keybuf[i] = c;
	}

	*lenptr = keylen;
	return keybuf;
}