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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int DM ; 
 scalar_t__ ERROR ; 
 unsigned char IAC ; 
 unsigned char IP ; 
 int /*<<< orphan*/  MSG_OOB ; 
 int /*<<< orphan*/  cin ; 
 int code ; 
 int /*<<< orphan*/ * cout ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ ptabflg ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void
FUNC10(FILE *din)
{
	unsigned char buf[BUFSIZ];
	int nfnd;

	if (cout == NULL) {
		FUNC9("Lost control connection for abort");
		if (ptabflg)
			code = -1;
		FUNC5(0);
		return;
	}
	/*
	 * send IAC in urgent mode instead of DM because 4.3BSD places oob mark
	 * after urgent byte rather than before as is protocol now
	 */
	buf[0] = IAC;
	buf[1] = IP;
	buf[2] = IAC;
	if (FUNC7(FUNC2(cout), buf, 3, MSG_OOB) != 3)
		FUNC8("Can't send abort message");
	FUNC3(cout, "%cABOR\r\n", DM);
	(void)FUNC1(cout);
	if ((nfnd = FUNC0(cin, din, 10)) <= 0) {
		if (nfnd < 0)
			FUNC8("Can't send abort message");
		if (ptabflg)
			code = -1;
		FUNC5(0);
	}
	if (din && (nfnd & 2)) {
		while (FUNC6(FUNC2(din), buf, BUFSIZ) > 0)
			continue;
	}
	if (FUNC4(0) == ERROR && code == 552) {
		/* 552 needed for nic style abort */
		(void)FUNC4(0);
	}
	(void)FUNC4(0);
}