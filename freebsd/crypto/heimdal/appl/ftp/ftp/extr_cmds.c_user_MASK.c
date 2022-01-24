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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  acctstr ;

/* Variables and functions */
 int COMPLETE ; 
 int CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,char***,char*) ; 
 int code ; 
 int FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 size_t FUNC7 (char*,char*) ; 

void
FUNC8(int argc, char **argv)
{
	char acctstr[80];
	int n, aflag = 0;
	char tmp[256];

	if (argc < 2)
		FUNC1(&argc, &argv, "username");
	if (argc < 2 || argc > 4) {
		FUNC6("usage: %s username [password] [account]\n", argv[0]);
		code = -1;
		return;
	}
	n = FUNC2("USER %s", argv[1]);
	if (n == CONTINUE) {
	    if (argc < 3 ) {
		FUNC0 (tmp,
				    sizeof(tmp),
				    "Password: ", 0);
		argv[2] = tmp;
		argc++;
	    }
	    n = FUNC2("PASS %s", argv[2]);
	}
	if (n == CONTINUE) {
		if (argc < 4) {
			FUNC6("Account: "); FUNC3(stdout);
			FUNC4(acctstr, sizeof(acctstr) - 1, stdin);
			acctstr[FUNC7(acctstr, "\r\n")] = '\0';
			argv[3] = acctstr; argc++;
		}
		n = FUNC2("ACCT %s", argv[3]);
		aflag++;
	}
	if (n != COMPLETE) {
		FUNC5(stdout, "Login failed.\n");
		return;
	}
	if (!aflag && argc == 4) {
		FUNC2("ACCT %s", argv[3]);
	}
}