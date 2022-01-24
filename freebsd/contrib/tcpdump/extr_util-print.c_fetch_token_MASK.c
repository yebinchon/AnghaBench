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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 scalar_t__ FUNC3 (char const) ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo, const u_char *pptr, u_int idx, u_int len,
    u_char *tbuf, size_t tbuflen)
{
	size_t toklen = 0;

	for (; idx < len; idx++) {
		if (!FUNC0(*(pptr + idx))) {
			/* ran past end of captured data */
			return (0);
		}
		if (!FUNC1(*(pptr + idx))) {
			/* not an ASCII character */
			return (0);
		}
		if (FUNC3(*(pptr + idx))) {
			/* end of token */
			break;
		}
		if (!FUNC2(*(pptr + idx))) {
			/* not part of a command token or response code */
			return (0);
		}
		if (toklen + 2 > tbuflen) {
			/* no room for this character and terminating '\0' */
			return (0);
		}
		tbuf[toklen] = *(pptr + idx);
		toklen++;
	}
	if (toklen == 0) {
		/* no token */
		return (0);
	}
	tbuf[toklen] = '\0';

	/*
	 * Skip past any white space after the token, until we see
	 * an end-of-line (CR or LF).
	 */
	for (; idx < len; idx++) {
		if (!FUNC0(*(pptr + idx))) {
			/* ran past end of captured data */
			break;
		}
		if (*(pptr + idx) == '\r' || *(pptr + idx) == '\n') {
			/* end of line */
			break;
		}
		if (!FUNC1(*(pptr + idx)) || !FUNC2(*(pptr + idx))) {
			/* not a printable ASCII character */
			break;
		}
		if (!FUNC3(*(pptr + idx))) {
			/* beginning of next token */
			break;
		}
	}
	return (idx);
}