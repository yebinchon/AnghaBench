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
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  EXCMD ;
typedef  int CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,size_t,size_t) ; 
 int /*<<< orphan*/  CH_LITERAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,size_t,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

CHAR_T *
FUNC6(SCR *sp, EXCMD *excp, CHAR_T *str, size_t len)
{
	size_t blen, off;
	CHAR_T *bp, *p;
	int ch;

	FUNC1(sp, bp, blen, len + 1);

	/*
	 * Leaving the first '~' unescaped causes the user to need a
	 * "./" prefix to edit a file which really starts with a '~'.
	 * However, the file completion happens to not work for these
	 * files without the prefix.
	 * 
	 * All ex expansion characters, "!%#", are double escaped.
	 */
	for (p = bp; len > 0; ++str, --len) {
		ch = *str;
		off = p - bp;
		if (blen / sizeof(CHAR_T) - off < 3) {
			FUNC0(sp, bp, blen, off + 3);
			p = bp + off;
		}
		if (FUNC3(ch) || ch == '\n' ||
		    FUNC2(sp, excp, ch))			/* Ex. */
			*p++ = CH_LITERAL;
		else switch (ch) {
		case '~':					/* ~user. */
			if (p != bp)
				*p++ = '\\';
			break;
		case '+':					/* Ex +cmd. */
			if (p == bp)
				*p++ = '\\';
			break;
		case '!': case '%': case '#':			/* Ex exp. */
			*p++ = '\\';
			*p++ = '\\';
			break;
		case ',': case '-': case '.': case '/':		/* Safe. */
		case ':': case '=': case '@': case '_':
			break;
		default:					/* Unsafe. */
			if (FUNC5(ch) && !FUNC4(ch))
				*p++ = '\\';
		}
		*p++ = ch;
	}
	*p = '\0';

	return bp;

alloc_err:
	return NULL;
}