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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,int*,int,int,char**,char*) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char**) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(char **pbuf, int *psz)	/* get next input token */
{
	int c, retc;
	char *buf = *pbuf;
	int sz = *psz;
	char *bp = buf;

	c = FUNC2();
	if (c == 0)
		return 0;
	buf[0] = c;
	buf[1] = 0;
	if (!FUNC3(c) && c != '.' && c != '_')
		return c;

	*bp++ = c;
	if (FUNC4(c) || c == '_') {	/* it's a varname */
		for ( ; (c = FUNC2()) != 0; ) {
			if (bp-buf >= sz)
				if (!FUNC1(&buf, &sz, bp-buf+2, 100, &bp, "gettok"))
					FUNC0( "out of space for name %.10s...", buf );
			if (FUNC3(c) || c == '_')
				*bp++ = c;
			else {
				*bp = 0;
				FUNC7(c);
				break;
			}
		}
		*bp = 0;
		retc = 'a';	/* alphanumeric */
	} else {	/* maybe it's a number, but could be . */
		char *rem;
		/* read input until can't be a number */
		for ( ; (c = FUNC2()) != 0; ) {
			if (bp-buf >= sz)
				if (!FUNC1(&buf, &sz, bp-buf+2, 100, &bp, "gettok"))
					FUNC0( "out of space for number %.10s...", buf );
			if (FUNC5(c) || c == 'e' || c == 'E' 
			  || c == '.' || c == '+' || c == '-')
				*bp++ = c;
			else {
				FUNC7(c);
				break;
			}
		}
		*bp = 0;
		FUNC6(buf, &rem);	/* parse the number */
		if (rem == buf) {	/* it wasn't a valid number at all */
			buf[1] = 0;	/* return one character as token */
			retc = buf[0];	/* character is its own type */
			FUNC8(rem+1); /* put rest back for later */
		} else {	/* some prefix was a number */
			FUNC8(rem);	/* put rest back for later */
			rem[0] = 0;	/* truncate buf after number part */
			retc = '0';	/* type is number */
		}
	}
	*pbuf = buf;
	*psz = sz;
	return retc;
}