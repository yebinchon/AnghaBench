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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int EOF ; 
 int _O_TEXT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 

__attribute__((used)) static u_long
FUNC10(
	const char *keyprompt
	)
{
	int c;
	FILE *fi;
	char pbuf[20];
	size_t i;
	size_t ilim;

#ifndef SYS_WINNT
	if ((fi = FUNC4(FUNC8("/dev/tty", 2), "r")) == NULL)
#else
	if ((fi = _fdopen(open("CONIN$", _O_TEXT), "r")) == NULL)
#endif /* SYS_WINNT */
		fi = stdin;
	else
		FUNC9(fi, (char *)NULL);
	FUNC6(stderr, "%s", keyprompt); FUNC5(stderr);
	for (i = 0, ilim = FUNC0(pbuf) - 1;
	     i < ilim && (c = FUNC7(fi)) != '\n' && c != EOF;
	     )
		pbuf[i++] = (char)c;
	pbuf[i] = '\0';
	if (fi != stdin)
		FUNC3(fi);

	return (u_long) FUNC2(pbuf);
}