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
 char* DEFAULTPAGER ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,char***,char*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,size_t) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void
FUNC11(int argc, char *argv[])
{
	size_t len;
	const char *p;
	char *pager, *locfile;

	if (argc == 0 || argc > 2 ||
	    (argc == 1 && !FUNC2(&argc, &argv, "local-file"))) {
		FUNC1("usage: %s local-file\n", argv[0]);
		code = -1;
		return;
	}
	if ((locfile = FUNC6(argv[1])) == NULL) {
		code = -1;
		return;
	}
	p = FUNC5("pager");
	if (FUNC0(p))
		p = DEFAULTPAGER;
	len = FUNC9(p) + FUNC9(locfile) + 2;
	pager = FUNC4(len);
	(void)FUNC8(pager, p,		len);
	(void)FUNC7(pager, " ",	len);
	(void)FUNC7(pager, locfile,	len);
	FUNC10(pager);
	code = 0;
	(void)FUNC3(pager);
	(void)FUNC3(locfile);
}