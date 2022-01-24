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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(int argc, char *argv[])
{
	char *ap;
	char emptypass[] = "";

	if (argc == 0 || argc > 2) {
		FUNC0("usage: %s [password]\n", argv[0]);
		code = -1;
		return;
	}
	else if (argc == 2)
		ap = argv[1];
	else {
		ap = FUNC2("Account:");
		if (ap == NULL)
			ap = emptypass;
	}
	(void)FUNC1("ACCT %s", ap);
	FUNC3(ap, 0, FUNC4(ap));
}