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
typedef  int /*<<< orphan*/  acctstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

void
FUNC4(int argc, char **argv)
{
	char acctstr[50];

	if (argc > 1) {
		++argv;
		--argc;
		FUNC3 (acctstr, *argv, sizeof(acctstr));
		while (argc > 1) {
			--argc;
			++argv;
			FUNC2(acctstr, *argv, sizeof(acctstr));
		}
	}
	else {
	    FUNC0(acctstr, sizeof(acctstr), "Account:", 0);
	}
	FUNC1("ACCT %s", acctstr);
}