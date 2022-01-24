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
 int /*<<< orphan*/  Bflag ; 
 int /*<<< orphan*/  LC_NUMERIC ; 
 int Nflag ; 
 int Tflag ; 
 int Wflag ; 
 int aflag ; 
 int bflag ; 
 int /*<<< orphan*/ * conffile ; 
 int dflag ; 
 int eflag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*) ; 
 int hflag ; 
 int iflag ; 
 int nflag ; 
 int oflag ; 
 int /*<<< orphan*/ * optarg ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int qflag ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int tflag ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int xflag ; 

int
FUNC9(int argc, char **argv)
{
	int ch;
	int warncount = 0;

	FUNC5(LC_NUMERIC, "");
	FUNC4(stdout,0);
	FUNC4(stderr,0);

	while ((ch = FUNC1(argc, argv, "AabB:def:hiNnoqtTwWxX")) != -1) {
		switch (ch) {
		case 'A':
			/* compatibility */
			aflag = oflag = 1;
			break;
		case 'a':
			aflag = 1;
			break;
		case 'b':
			bflag = 1;
			break;
		case 'B':
			Bflag = FUNC6(optarg, NULL, 0);
			break;
		case 'd':
			dflag = 1;
			break;
		case 'e':
			eflag = 1;
			break;
		case 'f':
			conffile = optarg;
			break;
		case 'h':
			hflag = 1;
			break;
		case 'i':
			iflag = 1;
			break;
		case 'N':
			Nflag = 1;
			break;
		case 'n':
			nflag = 1;
			break;
		case 'o':
			oflag = 1;
			break;
		case 'q':
			qflag = 1;
			break;
		case 't':
			tflag = 1;
			break;
		case 'T':
			Tflag = 1;
			break;
		case 'w':
			/* compatibility */
			/* ignored */
			break;
		case 'W':
			Wflag = 1;
			break;
		case 'X':
			/* compatibility */
			aflag = xflag = 1;
			break;
		case 'x':
			xflag = 1;
			break;
		default:
			FUNC8();
		}
	}
	argc -= optind;
	argv += optind;

	if (Nflag && nflag)
		FUNC8();
	if (aflag && argc == 0)
		FUNC0(FUNC7(0, 0));
	if (argc == 0 && conffile == NULL)
		FUNC8();

	warncount = 0;
	if (conffile != NULL)
		warncount += FUNC3(conffile);

	while (argc-- > 0)
		warncount += FUNC2(*argv++, 0);

	return (warncount);
}