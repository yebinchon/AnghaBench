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
typedef  int /*<<< orphan*/  sighand ;

/* Variables and functions */
 int MaxPathLen ; 
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ TYPE_I ; 
 int /*<<< orphan*/  FUNC0 (int*,char***,char*) ; 
 int code ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ curtype ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ fromatty ; 
 int interactive ; 
 int /*<<< orphan*/  jabort ; 
 int /*<<< orphan*/  mabort ; 
 scalar_t__ mapflag ; 
 scalar_t__ mcase ; 
 int mflag ; 
 char* mname ; 
 scalar_t__ ntflag ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  proxy ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void
FUNC11(int argc, char **argv)
{
	sighand oldintr;
	int ch, ointer;
	char *cp, *tp, *tp2, tmpbuf[MaxPathLen];

	if (argc < 2 && !FUNC0(&argc, &argv, "remote-files")) {
		FUNC4("usage: %s remote-files\n", argv[0]);
		code = -1;
		return;
	}
	mname = argv[0];
	mflag = 1;
	oldintr = FUNC8(SIGINT, mabort);
	FUNC7(jabort);
	while ((cp = FUNC6(argv,proxy)) != NULL) {
		if (*cp == '\0') {
			mflag = 0;
			continue;
		}
		if (mflag && FUNC9(cp))
		    FUNC4("*** Suspicious filename: %s\n", cp);
		if (mflag && FUNC1(argv[0], cp)) {
			tp = cp;
			if (mcase) {
				for (tp2 = tmpbuf;(ch = (unsigned char)*tp++);)
					*tp2++ = FUNC10(ch);
				*tp2 = '\0';
				tp = tmpbuf;
			}
			if (ntflag) {
				tp = FUNC3(tp);
			}
			if (mapflag) {
				tp = FUNC2(tp);
			}
			FUNC5("RETR", tp, cp,
				    curtype == TYPE_I ? "wb" : "w",
				    tp != cp || !interactive, 0);
			if (!mflag && fromatty) {
				ointer = interactive;
				interactive = 1;
				if (FUNC1("Continue with","mget")) {
					mflag++;
				}
				interactive = ointer;
			}
		}
	}
	FUNC8(SIGINT,oldintr);
	mflag = 0;
}