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
typedef  char CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static int
FUNC3(SCR *sp, CHAR_T **ptrnp, size_t *plenp, int *replacedp)
{
	size_t blen, len;
	int lastdollar;
	CHAR_T *bp, *p, *t;

	len = *plenp;

	/* Max memory usage is 2 times the length of the string. */
	*replacedp = 1;
	FUNC0(sp, bp, blen, len * 2);

	p = *ptrnp;
	t = bp;

	/* If the last character is a '/' or '?', we just strip it. */
	if (len > 0 && (p[len - 1] == '/' || p[len - 1] == '?'))
		--len;

	/* If the next-to-last or last character is a '$', it's magic. */
	if (len > 0 && p[len - 1] == '$') {
		--len;
		lastdollar = 1;
	} else
		lastdollar = 0;

	/* If the first character is a '/' or '?', we just strip it. */
	if (len > 0 && (p[0] == '/' || p[0] == '?')) {
		++p;
		--len;
	}

	/* If the first or second character is a '^', it's magic. */
	if (p[0] == '^') {
		*t++ = *p++;
		--len;
	}

	/*
	 * Escape every other magic character we can find, meanwhile stripping
	 * the backslashes ctags inserts when escaping the search delimiter
	 * characters.
	 */
	for (; len > 0; --len) {
		if (p[0] == '\\' && (p[1] == '/' || p[1] == '?')) {
			++p;
			--len;
		} else if (FUNC2(FUNC1("^.[]$*"), p[0]))
			*t++ = '\\';
		*t++ = *p++;
	}
	if (lastdollar)
		*t++ = '$';

	*ptrnp = bp;
	*plenp = t - bp;
	return (0);
}