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
typedef  int /*<<< orphan*/ * sighand ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ PRELIM ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/ * SIG_IGN ; 
 int TYPE_A ; 
 int TYPE_I ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * abortpt ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  cin ; 
 int code ; 
 scalar_t__ FUNC4 (char*,...) ; 
 int /*<<< orphan*/  connected ; 
 scalar_t__ cpend ; 
 int curtype ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pasv ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ proxy ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ ptabflg ; 
 int /*<<< orphan*/  ptabort ; 
 scalar_t__ ptflag ; 
 scalar_t__ runique ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int type ; 
 scalar_t__ unix_proxy ; 
 scalar_t__ unix_server ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

void
FUNC17 (char *cmd, char *local, char *remote)
{
    sighand oldintr = NULL;
    int secndflag = 0, prox_type, nfnd;
    char *cmd2;
    fd_set mask;

    if (FUNC15 (cmd, "RETR"))
	cmd2 = "RETR";
    else
	cmd2 = runique ? "STOU" : "STOR";
    if ((prox_type = type) == 0) {
	if (unix_server && unix_proxy)
	    prox_type = TYPE_I;
	else
	    prox_type = TYPE_A;
    }
    if (curtype != prox_type)
	FUNC3 (prox_type, 1);
    if (FUNC4 ("PASV") != COMPLETE) {
	FUNC10 ("proxy server does not support third party transfers.\n");
	return;
    }
    FUNC11 (0);
    if (!connected) {
	FUNC10 ("No primary connection\n");
	FUNC11 (1);
	code = -1;
	return;
    }
    if (curtype != prox_type)
	FUNC3 (prox_type, 1);
    if (FUNC4 ("PORT %s", pasv) != COMPLETE) {
	FUNC11 (1);
	return;
    }
    if (FUNC12 (ptabort))
	goto abort;
    oldintr = FUNC13 (SIGINT, abortpt);
    if (FUNC4 ("%s %s", cmd, remote) != PRELIM) {
	FUNC13 (SIGINT, oldintr);
	FUNC11 (1);
	return;
    }
    FUNC14 (2);
    FUNC11 (1);
    secndflag++;
    if (FUNC4 ("%s %s", cmd2, local) != PRELIM)
	goto abort;
    ptflag++;
    FUNC8 (0);
    FUNC11 (0);
    FUNC8 (0);
    FUNC13 (SIGINT, oldintr);
    FUNC11 (1);
    ptflag = 0;
    FUNC10 ("local: %s remote: %s\n", local, remote);
    return;
abort:
    FUNC13 (SIGINT, SIG_IGN);
    ptflag = 0;
    if (FUNC15 (cmd, "RETR") && !proxy)
	FUNC11 (1);
    else if (!FUNC15 (cmd, "RETR") && proxy)
	FUNC11 (0);
    if (!cpend && !secndflag) {	/* only here if cmd = "STOR" (proxy=1) */
	if (FUNC4 ("%s %s", cmd2, local) != PRELIM) {
	    FUNC11 (0);
	    if (cpend)
		FUNC2 ((FILE *) NULL);
	}
	FUNC11 (1);
	if (ptabflg)
	    code = -1;
	if (oldintr)
	    FUNC13 (SIGINT, oldintr);
	return;
    }
    if (cpend)
	FUNC2 ((FILE *) NULL);
    FUNC11 (!proxy);
    if (!cpend && !secndflag) {	/* only if cmd = "RETR" (proxy=1) */
	if (FUNC4 ("%s %s", cmd2, local) != PRELIM) {
	    FUNC11 (0);
	    if (cpend)
		FUNC2 ((FILE *) NULL);
	    FUNC11 (1);
	    if (ptabflg)
		code = -1;
	    FUNC13 (SIGINT, oldintr);
	    return;
	}
    }
    if (cpend)
	FUNC2 ((FILE *) NULL);
    FUNC11 (!proxy);
    if (cpend) {
	FUNC1 (&mask);
	if (FUNC7(cin) >= FD_SETSIZE)
	    FUNC6 (1, "fd too large");
	FUNC0 (FUNC7 (cin), &mask);
	if ((nfnd = FUNC5 (&mask, 10)) <= 0) {
	    if (nfnd < 0) {
		FUNC16 ("abort");
	    }
	    if (ptabflg)
		code = -1;
	    FUNC9 (0);
	}
	FUNC8 (0);
	FUNC8 (0);
    }
    if (proxy)
	FUNC11 (0);
    FUNC11 (1);
    if (ptabflg)
	code = -1;
    FUNC13 (SIGINT, oldintr);
}