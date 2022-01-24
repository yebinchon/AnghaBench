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
typedef  int uschar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (char const*) ; 

char *FUNC5(const char *is, int delim)	/* collect string up to next delim */
{
	const char *os = is;
	int c, n;
	uschar *s = (uschar *) is;
	uschar *buf, *bp;

	if ((buf = (uschar *) FUNC3(FUNC4(is)+3)) == NULL)
		FUNC0( "out of space in qstring(%s)", s);
	for (bp = buf; (c = *s) != delim; s++) {
		if (c == '\n')
			FUNC1( "newline in string %.20s...", os );
		else if (c != '\\')
			*bp++ = c;
		else {	/* \something */
			c = *++s;
			if (c == 0) {	/* \ at end */
				*bp++ = '\\';
				break;	/* for loop */
			}	
			switch (c) {
			case '\\':	*bp++ = '\\'; break;
			case 'n':	*bp++ = '\n'; break;
			case 't':	*bp++ = '\t'; break;
			case 'b':	*bp++ = '\b'; break;
			case 'f':	*bp++ = '\f'; break;
			case 'r':	*bp++ = '\r'; break;
			default:
				if (!FUNC2(c)) {
					*bp++ = c;
					break;
				}
				n = c - '0';
				if (FUNC2(s[1])) {
					n = 8 * n + *++s - '0';
					if (FUNC2(s[1]))
						n = 8 * n + *++s - '0';
				}
				*bp++ = n;
				break;
			}
		}
	}
	*bp++ = 0;
	return (char *) buf;
}