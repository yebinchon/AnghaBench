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
 int hash ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*,int,int /*<<< orphan*/ ) ; 
 int restart_point ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 
 int FUNC8 (char const*) ; 
 int verbose ; 

void
FUNC9(int argc, char *argv[])
{
	int ohash, orestart_point, overbose;
	size_t len;
	const char *p;
	char *pager;

	if (argc == 0 || argc > 2 ||
	    (argc == 1 && !FUNC2(&argc, &argv, "remote-file"))) {
		FUNC1("usage: %s remote-file\n", argv[0]);
		code = -1;
		return;
	}
	p = FUNC5("pager");
	if (FUNC0(p))
		p = DEFAULTPAGER;
	len = FUNC8(p) + 2;
	pager = FUNC4(len);
	pager[0] = '|';
	(void)FUNC7(pager + 1, p, len - 1);

	ohash = hash;
	orestart_point = restart_point;
	overbose = verbose;
	hash = restart_point = verbose = 0;
	FUNC6("RETR", pager, argv[1], "r+", 1, 0);
	hash = ohash;
	restart_point = orestart_point;
	verbose = overbose;
	(void)FUNC3(pager);
}