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
typedef  scalar_t__ uschar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__*) ; 
 int NCHARS ; 
 int /*<<< orphan*/  FUNC1 (char**,int*,int,int,char**,char*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (scalar_t__**) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 

char *FUNC8(const char *argp)	/* add a character class */
{
	int i, c, c2;
	int j;
	uschar *p = (uschar *) argp;
	uschar *op, *bp;
	static uschar *buf = NULL;
	static int bufsz = 100;

	op = p;
	if (buf == NULL && (buf = (uschar *) FUNC4(bufsz)) == NULL)
		FUNC0("out of space for character class [%.10s...] 1", p);
	bp = buf;
	for (i = 0; (c = *p++) != 0; ) {
		if (c == '\\') {
			c = FUNC5(&p);
		} else if (c == '-' && i > 0 && bp[-1] != 0) {
			if (*p != 0) {
				c = bp[-1];
				c2 = *p++;
				if (c2 == '\\')
					c2 = FUNC5(&p);
				if (FUNC2(c, c2) > 0) {
					bp--;
					i--;
					continue;
				}
				for (j = 0; j < NCHARS; j++) {
					if ((FUNC2(c, j) > 0) ||
					    FUNC2(j, c2) > 0)
						continue;
					if (!FUNC1((char **) &buf, &bufsz, bp-buf+2, 100, (char **) &bp, "cclenter1"))
						FUNC0("out of space for character class [%.10s...] 2", p);
					*bp++ = j;
					i++;
				}
				continue;
			}
		}
		if (!FUNC1((char **) &buf, &bufsz, bp-buf+2, 100, (char **) &bp, "cclenter2"))
			FUNC0("out of space for character class [%.10s...] 3", p);
		*bp++ = c;
		i++;
	}
	*bp = 0;
	FUNC3( ("cclenter: in = |%s|, out = |%s|\n", op, buf) );
	FUNC7(op);
	return (char *) FUNC6((char *) buf);
}