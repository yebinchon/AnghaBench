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
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENOTCAPABLE ; 
 int GETADDRINFO_AF_INET ; 
 int GETADDRINFO_AF_INET6 ; 
 int GETADDRINFO_AF_UNSPEC ; 
 int GETHOSTBYADDR_AF_INET ; 
 int GETHOSTBYADDR_AF_INET6 ; 
 int GETHOSTBYNAME ; 
 int GETHOSTBYNAME2_AF_INET ; 
 int GETHOSTBYNAME2_AF_INET6 ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const**,int) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC12(void)
{
	cap_channel_t *capcas, *capdns, *origcapdns;
	const char *types[2];
	int families[2];

	FUNC10("1..91\n");
	FUNC9(stdout);

	capcas = FUNC6();
	FUNC1(capcas != NULL);

	origcapdns = capdns = FUNC7(capcas, "system.dns");
	FUNC1(capdns != NULL);

	FUNC3(capcas);

	/* No limits set. */

	FUNC0(FUNC11(capdns) ==
	    (GETHOSTBYNAME | GETHOSTBYNAME2_AF_INET | GETHOSTBYNAME2_AF_INET6 |
	     GETHOSTBYADDR_AF_INET | GETHOSTBYADDR_AF_INET6 |
	     GETADDRINFO_AF_UNSPEC | GETADDRINFO_AF_INET | GETADDRINFO_AF_INET6));

	/*
	 * Allow:
	 * type: NAME, ADDR
	 * family: AF_INET, AF_INET6
	 */

	capdns = FUNC2(origcapdns);
	FUNC0(capdns != NULL);

	types[0] = "NAME2ADDR";
	types[1] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 2) == 0);
	families[0] = AF_INET;
	families[1] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 2) == 0);

	FUNC0(FUNC11(capdns) ==
	    (GETHOSTBYNAME | GETHOSTBYNAME2_AF_INET | GETHOSTBYNAME2_AF_INET6 |
	     GETHOSTBYADDR_AF_INET | GETHOSTBYADDR_AF_INET6 |
	     GETADDRINFO_AF_INET | GETADDRINFO_AF_INET6));

	FUNC3(capdns);

	/*
	 * Allow:
	 * type: NAME
	 * family: AF_INET, AF_INET6
	 */

	capdns = FUNC2(origcapdns);
	FUNC0(capdns != NULL);

	types[0] = "NAME2ADDR";
	FUNC0(FUNC5(capdns, types, 1) == 0);
	types[1] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 2) == -1 &&
	    errno == ENOTCAPABLE);
	types[0] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 1) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET;
	families[1] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 2) == 0);

	FUNC0(FUNC11(capdns) ==
	    (GETHOSTBYNAME | GETHOSTBYNAME2_AF_INET | GETHOSTBYNAME2_AF_INET6 |
	    GETADDRINFO_AF_INET | GETADDRINFO_AF_INET6));

	FUNC3(capdns);

	/*
	 * Allow:
	 * type: ADDR
	 * family: AF_INET, AF_INET6
	 */

	capdns = FUNC2(origcapdns);
	FUNC0(capdns != NULL);

	types[0] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 1) == 0);
	types[1] = "NAME2ADDR";
	FUNC0(FUNC5(capdns, types, 2) == -1 &&
	    errno == ENOTCAPABLE);
	types[0] = "NAME2ADDR";
	FUNC0(FUNC5(capdns, types, 1) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET;
	families[1] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 2) == 0);

	FUNC0(FUNC11(capdns) ==
	    (GETHOSTBYADDR_AF_INET | GETHOSTBYADDR_AF_INET6));
	FUNC3(capdns);

	/*
	 * Allow:
	 * type: NAME, ADDR
	 * family: AF_INET
	 */

	capdns = FUNC2(origcapdns);
	FUNC0(capdns != NULL);

	types[0] = "NAME2ADDR";
	types[1] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 2) == 0);
	families[0] = AF_INET;
	FUNC0(FUNC4(capdns, families, 1) == 0);
	families[1] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 2) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC11(capdns) ==
	    (GETHOSTBYNAME | GETHOSTBYNAME2_AF_INET | GETHOSTBYADDR_AF_INET |
	    GETADDRINFO_AF_INET));

	FUNC3(capdns);

	/*
	 * Allow:
	 * type: NAME, ADDR
	 * family: AF_INET6
	 */

	capdns = FUNC2(origcapdns);
	FUNC0(capdns != NULL);

	types[0] = "NAME2ADDR";
	types[1] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 2) == 0);
	families[0] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 1) == 0);
	families[1] = AF_INET;
	FUNC0(FUNC4(capdns, families, 2) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET;
	FUNC0(FUNC4(capdns, families, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC11(capdns) ==
	    (GETHOSTBYNAME2_AF_INET6 | GETHOSTBYADDR_AF_INET6 |
	    GETADDRINFO_AF_INET6));

	FUNC3(capdns);

	/* Below we also test further limiting capability. */

	/*
	 * Allow:
	 * type: NAME
	 * family: AF_INET
	 */

	capdns = FUNC2(origcapdns);
	FUNC0(capdns != NULL);

	types[0] = "NAME2ADDR";
	types[1] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 2) == 0);
	families[0] = AF_INET;
	families[1] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 2) == 0);
	types[0] = "NAME2ADDR";
	FUNC0(FUNC5(capdns, types, 1) == 0);
	types[1] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 2) == -1 &&
	    errno == ENOTCAPABLE);
	types[0] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 1) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET;
	FUNC0(FUNC4(capdns, families, 1) == 0);
	families[1] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 2) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC11(capdns) ==
	    (GETHOSTBYNAME | GETHOSTBYNAME2_AF_INET | GETADDRINFO_AF_INET));

	FUNC3(capdns);

	/*
	 * Allow:
	 * type: NAME
	 * family: AF_INET6
	 */

	capdns = FUNC2(origcapdns);
	FUNC0(capdns != NULL);

	types[0] = "NAME2ADDR";
	types[1] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 2) == 0);
	families[0] = AF_INET;
	families[1] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 2) == 0);
	types[0] = "NAME2ADDR";
	FUNC0(FUNC5(capdns, types, 1) == 0);
	types[1] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 2) == -1 &&
	    errno == ENOTCAPABLE);
	types[0] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 1) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 1) == 0);
	families[1] = AF_INET;
	FUNC0(FUNC4(capdns, families, 2) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET;
	FUNC0(FUNC4(capdns, families, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC11(capdns) ==
	    (GETHOSTBYNAME2_AF_INET6 | GETADDRINFO_AF_INET6));

	FUNC3(capdns);

	/*
	 * Allow:
	 * type: ADDR
	 * family: AF_INET
	 */

	capdns = FUNC2(origcapdns);
	FUNC0(capdns != NULL);

	types[0] = "NAME2ADDR";
	types[1] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 2) == 0);
	families[0] = AF_INET;
	families[1] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 2) == 0);
	types[0] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 1) == 0);
	types[1] = "NAME2ADDR";
	FUNC0(FUNC5(capdns, types, 2) == -1 &&
	    errno == ENOTCAPABLE);
	types[0] = "NAME2ADDR";
	FUNC0(FUNC5(capdns, types, 1) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET;
	FUNC0(FUNC4(capdns, families, 1) == 0);
	families[1] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 2) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC11(capdns) == GETHOSTBYADDR_AF_INET);

	FUNC3(capdns);

	/*
	 * Allow:
	 * type: ADDR
	 * family: AF_INET6
	 */

	capdns = FUNC2(origcapdns);
	FUNC0(capdns != NULL);

	types[0] = "NAME2ADDR";
	types[1] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 2) == 0);
	families[0] = AF_INET;
	families[1] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 2) == 0);
	types[0] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 1) == 0);
	types[1] = "NAME2ADDR";
	FUNC0(FUNC5(capdns, types, 2) == -1 &&
	    errno == ENOTCAPABLE);
	types[0] = "NAME2ADDR";
	FUNC0(FUNC5(capdns, types, 1) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 1) == 0);
	families[1] = AF_INET;
	FUNC0(FUNC4(capdns, families, 2) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET;
	FUNC0(FUNC4(capdns, families, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC11(capdns) == GETHOSTBYADDR_AF_INET6);

	FUNC3(capdns);

	/* Trying to rise the limits. */

	capdns = FUNC2(origcapdns);
	FUNC0(capdns != NULL);

	types[0] = "NAME2ADDR";
	FUNC0(FUNC5(capdns, types, 1) == 0);
	families[0] = AF_INET;
	FUNC0(FUNC4(capdns, families, 1) == 0);

	types[0] = "NAME2ADDR";
	types[1] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 2) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET;
	families[1] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 2) == -1 &&
	    errno == ENOTCAPABLE);

	types[0] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 1) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC5(capdns, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	FUNC0(FUNC4(capdns, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);

	/* Do the limits still hold? */
	FUNC0(FUNC11(capdns) == (GETHOSTBYNAME | GETHOSTBYNAME2_AF_INET |
	    GETADDRINFO_AF_INET));

	FUNC3(capdns);

	capdns = FUNC2(origcapdns);
	FUNC0(capdns != NULL);

	types[0] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 1) == 0);
	families[0] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 1) == 0);

	types[0] = "NAME2ADDR";
	types[1] = "ADDR2NAME";
	FUNC0(FUNC5(capdns, types, 2) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET;
	families[1] = AF_INET6;
	FUNC0(FUNC4(capdns, families, 2) == -1 &&
	    errno == ENOTCAPABLE);

	types[0] = "NAME2ADDR";
	FUNC0(FUNC5(capdns, types, 1) == -1 &&
	    errno == ENOTCAPABLE);
	families[0] = AF_INET;
	FUNC0(FUNC4(capdns, families, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC5(capdns, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	FUNC0(FUNC4(capdns, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);

	/* Do the limits still hold? */
	FUNC0(FUNC11(capdns) == GETHOSTBYADDR_AF_INET6);

	FUNC3(capdns);

	FUNC3(origcapdns);

	FUNC8(0);
}