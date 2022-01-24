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
typedef  int /*<<< orphan*/  MINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 int /*<<< orphan*/  stdin ; 

void
FUNC8(MINT *mp)
{
	MINT *rmp;
	char *line, *nline;
	size_t linelen;

	line = FUNC4(stdin, &linelen);
	if (line == NULL)
		FUNC0(("min"));
	nline = FUNC6(linelen + 1);
	if (nline == NULL)
		FUNC0(("min"));
	FUNC7(nline, line, linelen);
	nline[linelen] = '\0';
	rmp = FUNC1("min", nline);
	FUNC3("min", rmp, mp);
	FUNC2("min", rmp);
	FUNC5(nline);
}