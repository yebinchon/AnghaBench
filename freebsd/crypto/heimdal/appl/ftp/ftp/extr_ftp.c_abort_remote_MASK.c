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
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int DM ; 
 scalar_t__ ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int IAC ; 
 int IP ; 
 int /*<<< orphan*/  MSG_OOB ; 
 int /*<<< orphan*/ * cin ; 
 int code ; 
 int /*<<< orphan*/ * cout ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ ptabflg ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

void
FUNC16 (FILE * din)
{
    char buf[BUFSIZ];
    int nfnd;
    fd_set mask;

    /*
     * send IAC in urgent mode instead of DM because 4.3BSD places oob mark
     * after urgent byte rather than before as is protocol now
     */
    FUNC14 (buf, sizeof (buf), "%c%c%c", IAC, IP, IAC);
    if (FUNC13 (FUNC6 (cout), buf, 3, MSG_OOB) != 3)
	FUNC15 ("abort");
    FUNC7 (cout, "%c", DM);
    FUNC12(cout, "ABOR");
    FUNC11 (cout);
    FUNC7 (cout, "\r\n");
    FUNC5(cout);
    FUNC2 (&mask);
    if (FUNC6 (cin) >= FD_SETSIZE)
	FUNC4 (1, "fd too large");
    FUNC1 (FUNC6 (cin), &mask);
    if (din) {
	if (FUNC6 (din) >= FD_SETSIZE)
	    FUNC4 (1, "fd too large");
	FUNC1 (FUNC6 (din), &mask);
    }
    if ((nfnd = FUNC3 (&mask, 10)) <= 0) {
	if (nfnd < 0) {
	    FUNC15 ("abort");
	}
	if (ptabflg)
	    code = -1;
	FUNC9 (0);
    }
    if (din && FUNC0 (FUNC6 (din), &mask)) {
	while (FUNC10 (FUNC6 (din), buf, BUFSIZ) > 0)
	     /* LOOP */ ;
    }
    if (FUNC8 (0) == ERROR && code == 552) {
	/* 552 needed for nic style abort */
	FUNC8 (0);
    }
    FUNC8 (0);
}