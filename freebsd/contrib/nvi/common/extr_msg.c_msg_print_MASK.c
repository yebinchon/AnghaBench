#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ibcw; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  char CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__,char*,size_t) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (size_t) ; 
 scalar_t__ FUNC8 (char const*) ; 

char *
FUNC9(
	SCR *sp,
	const char *s,
	int *needfree)
{
	size_t blen, nlen;
	char *bp, *ep, *p, *t;
	CHAR_T *wp, *cp;
	size_t wlen;

	*needfree = 0;

	/* XXX Not good for debugging ex_read & ex_filter.*/
	FUNC0(sp, FUNC1(sp)->ibcw, (char *)s, FUNC8(s) + 1, wp, wlen);
	for (cp = wp; *cp != '\0'; ++cp)
		if (!FUNC4(*cp))
			break;
	if (*cp == '\0')
		return ((char *)s);	/* SAFE: needfree set to 0. */

	nlen = 0;
	if (0) {
retry:		if (sp == NULL)
			FUNC6(bp);
		else
			FUNC2(sp, bp, blen);
		*needfree = 0;
	}
	nlen += 256;
	if (sp == NULL) {
		if ((bp = FUNC7(nlen)) == NULL)
			goto alloc_err;
	} else
		FUNC3(sp, bp, blen, nlen);
	if (0) {
alloc_err:	return ("");
	}
	*needfree = 1;

	for (p = bp, ep = (bp + blen) - 1; *wp != '\0' && p < ep; ++wp)
		for (t = FUNC5(sp, *wp); *t != '\0' && p < ep; *p++ = *t++);
	if (p == ep)
		goto retry;
	*p = '\0';
	return (bp);
}