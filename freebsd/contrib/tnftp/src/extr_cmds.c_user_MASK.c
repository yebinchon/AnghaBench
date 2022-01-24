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
 int COMPLETE ; 
 int CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char***,char*) ; 
 int code ; 
 int FUNC2 (char*,char*) ; 
 int connected ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  ttyout ; 

void
FUNC8(int argc, char *argv[])
{
	char *password;
	char emptypass[] = "";
	int n, aflag = 0;

	if (argc == 0)
		goto usage;
	if (argc < 2)
		(void)FUNC1(&argc, &argv, "username");
	if (argc < 2 || argc > 4) {
 usage:
		FUNC0("usage: %s username [password [account]]\n",
		    argv[0]);
		code = -1;
		return;
	}
	n = FUNC2("USER %s", argv[1]);
	if (n == CONTINUE) {
		if (argc < 3) {
			password = FUNC4("Password: ");
			if (password == NULL)
				password = emptypass;
		} else {
			password = argv[2];
		}
		n = FUNC2("PASS %s", password);
		FUNC6(password, 0, FUNC7(password));
	}
	if (n == CONTINUE) {
		aflag++;
		if (argc < 4) {
			password = FUNC4("Account: ");
			if (password == NULL)
				password = emptypass;
		} else {
			password = argv[3];
		}
		n = FUNC2("ACCT %s", password);
		FUNC6(password, 0, FUNC7(password));
	}
	if (n != COMPLETE) {
		FUNC3("Login failed.\n", ttyout);
		return;
	}
	if (!aflag && argc == 4) {
		password = argv[3];
		(void)FUNC2("ACCT %s", password);
		FUNC6(password, 0, FUNC7(password));
	}
	connected = -1;
	FUNC5();
}