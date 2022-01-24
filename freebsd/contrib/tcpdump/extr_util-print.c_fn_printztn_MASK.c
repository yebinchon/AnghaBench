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
typedef  scalar_t__ u_int ;
typedef  char u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char FUNC3 (char) ; 

u_int
FUNC4(netdissect_options *ndo,
         register const u_char *s, register u_int n, register const u_char *ep)
{
	register u_int bytes;
	register u_char c;

	bytes = 0;
	for (;;) {
		if (n == 0 || (ep != NULL && s >= ep)) {
			/*
			 * Truncated.  This includes "no null before we
			 * got to the end of the fixed-length buffer".
			 *
			 * XXX - BOOTP says "null-terminated", which
			 * means the maximum length of the string, in
			 * bytes, is 1 less than the size of the buffer,
			 * as there must always be a terminating null.
			 */
			bytes = 0;
			break;
		}

		c = *s++;
		bytes++;
		n--;
		if (c == '\0') {
			/* End of string */
			break;
		}
		if (!FUNC0(c)) {
			c = FUNC3(c);
			FUNC2((ndo, "M-"));
		}
		if (!FUNC1(c)) {
			c ^= 0x40;	/* DEL to ?, others to alpha */
			FUNC2((ndo, "^"));
		}
		FUNC2((ndo, "%c", c));
	}
	return(bytes);
}