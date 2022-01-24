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
 int /*<<< orphan*/  XOF_DTRT ; 
 int /*<<< orphan*/  info ; 
 int /*<<< orphan*/  info_count ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int,char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11 (int argc, char **argv)
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

    FUNC10(NULL, info, info_count);

    FUNC9(NULL, XOF_DTRT);

    FUNC5("employees");
    FUNC7("employee");

    for ( ; ep->e_first; ep++) {
	FUNC6("employee");
	FUNC3("{:first-name} {:last-name} works in dept #{:department/%u}\n",
		ep->e_first, ep->e_last, ep->e_dept);
	FUNC1();
    }

    FUNC2();
    FUNC0();

    FUNC4();

    return 0;
}