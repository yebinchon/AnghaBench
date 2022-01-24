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
struct TYPE_2__ {int /*<<< orphan*/  cp; } ;

/* Variables and functions */
 int CON ; 
 int DONTFREE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int STR ; 
 int /*<<< orphan*/  STRING ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,int*,int,int,char**,char*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  lineno ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,double,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,unsigned int*) ; 
 int /*<<< orphan*/  symtab ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 TYPE_1__ yylval ; 

int FUNC12(void)
{
	int c, n;
	char *s, *bp;
	static char *buf = NULL;
	static int bufsz = 500;

	if (buf == NULL && (buf = (char *) FUNC6(bufsz)) == NULL)
		FUNC0("out of space for strings");
	for (bp = buf; (c = FUNC4()) != '"'; ) {
		if (!FUNC3(&buf, &bufsz, bp-buf+2, 500, &bp, "string"))
			FUNC0("out of space for string %.10s...", buf);
		switch (c) {
		case '\n':
		case '\r':
		case 0:
			*bp = '\0';
			FUNC2( "non-terminated string %.10s...", buf );
			if (c == 0)	/* hopeless */
				FUNC0( "giving up" );
			lineno++;
			break;
		case '\\':
			c = FUNC4();
			switch (c) {
			case '"': *bp++ = '"'; break;
			case 'n': *bp++ = '\n'; break;	
			case 't': *bp++ = '\t'; break;
			case 'f': *bp++ = '\f'; break;
			case 'r': *bp++ = '\r'; break;
			case 'b': *bp++ = '\b'; break;
			case 'v': *bp++ = '\v'; break;
			case 'a': *bp++ = '\007'; break;
			case '\\': *bp++ = '\\'; break;

			case '0': case '1': case '2': /* octal: \d \dd \ddd */
			case '3': case '4': case '5': case '6': case '7':
				n = c - '0';
				if ((c = FUNC7()) >= '0' && c < '8') {
					n = 8 * n + FUNC4() - '0';
					if ((c = FUNC7()) >= '0' && c < '8')
						n = 8 * n + FUNC4() - '0';
				}
				*bp++ = n;
				break;

			case 'x':	/* hex  \x0-9a-fA-F + */
			    {	char xbuf[100], *px;
				for (px = xbuf; (c = FUNC4()) != 0 && px-xbuf < 100-2; ) {
					if (FUNC5(c)
					 || (c >= 'a' && c <= 'f')
					 || (c >= 'A' && c <= 'F'))
						*px++ = c;
					else
						break;
				}
				*px = 0;
				FUNC11(c);
	  			FUNC9(xbuf, "%x", (unsigned int *) &n);
				*bp++ = n;
				break;
			    }

			default: 
				*bp++ = c;
				break;
			}
			break;
		default:
			*bp++ = c;
			break;
		}
	}
	*bp = 0; 
	s = FUNC10(buf);
	*bp++ = ' '; *bp++ = 0;
	yylval.cp = FUNC8(buf, s, 0.0, CON|STR|DONTFREE, symtab);
	FUNC1(STRING);
}