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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int GETGRENT ; 
 int GETGRENT_R ; 
 int GETGRGID ; 
 int GETGRGID_R ; 
 int GETGRNAM ; 
 int GETGRNAM_R ; 
 int SETGRENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(void)
{
	cap_channel_t *capcas, *capgrp;

	FUNC7("1..199\n");
	FUNC6(stdout);

	capcas = FUNC3();
	FUNC1(capcas != NULL);

	capgrp = FUNC4(capcas, "system.grp");
	FUNC1(capgrp != NULL);

	FUNC2(capcas);

	/* No limits. */

	FUNC0(FUNC8(capgrp) == (SETGRENT | GETGRENT | GETGRENT_R |
	    GETGRNAM | GETGRNAM_R | GETGRGID | GETGRGID_R));

	FUNC9(capgrp);

	FUNC10(capgrp);

	FUNC11(capgrp);

	FUNC2(capgrp);

	FUNC5(0);
}