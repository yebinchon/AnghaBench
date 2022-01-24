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
struct TYPE_2__ {int /*<<< orphan*/  s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  REGEXPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,int*,int,int,char**,char*) ; 
 void* FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 TYPE_1__ yylval ; 

int FUNC8(void)
{
	int c;
	static char *buf = NULL;
	static int bufsz = 500;
	char *bp;

	if (buf == NULL && (buf = (char *) FUNC5(bufsz)) == NULL)
		FUNC0("out of space for rex expr");
	bp = buf;
	for ( ; (c = FUNC4()) != '/' && c != 0; ) {
		if (!FUNC3(&buf, &bufsz, bp-buf+3, 500, &bp, "regexpr"))
			FUNC0("out of space for reg expr %.10s...", buf);
		if (c == '\n') {
			*bp = '\0';
			FUNC2( "newline in regular expression %.10s...", buf ); 
			FUNC7('\n');
			break;
		} else if (c == '\\') {
			*bp++ = '\\'; 
			*bp++ = FUNC4();
		} else {
			*bp++ = c;
		}
	}
	*bp = 0;
	if (c == 0)
		FUNC2("non-terminated regular expression %.10s...", buf);
	yylval.s = FUNC6(buf);
	FUNC7('/');
	FUNC1(REGEXPR);
}