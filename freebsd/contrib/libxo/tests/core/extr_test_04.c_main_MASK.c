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
 int /*<<< orphan*/  info ; 
 int /*<<< orphan*/  info_count ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int,char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC10 (int argc, char **argv)
{
    struct employee {
	const char *e_first;
	const char *e_last;
	unsigned e_dept;
    } employees[] = {
	{ "Terry", "Jones", 660 },
	{ "Leslie", "Patterson", 341 },
	{ "Ashley", "Smith", 1440 },
	{ NULL, NULL }
    }, *ep = employees;

    argc = FUNC8(argc, argv);
    if (argc < 0)
	return 1;

    FUNC9(NULL, info, info_count);

    FUNC5("employees");
    FUNC7("employee");

    FUNC3("{T:Last Name/%-12s}{T:First Name/%-14s}{T:Department/%s}\n");
    for ( ; ep->e_first; ep++) {
	FUNC6("employee");
	FUNC3("{:first-name/%-12s/%s}{:last-name/%-14s/%s}"
		"{:department/%8u/%u}\n",
		ep->e_first, ep->e_last, ep->e_dept);
	FUNC1("employee");
    }

    FUNC2("employee");
    FUNC0("employees");

    FUNC4();

    return 0;
}