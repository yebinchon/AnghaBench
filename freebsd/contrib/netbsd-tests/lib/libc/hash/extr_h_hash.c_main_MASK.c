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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*) ; 
 int mflag ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int rflag ; 
 int sflag ; 
 int tflag ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int argc, char **argv)
{
	int ch;

	while ((ch = FUNC1(argc, argv, "mrst")) != -1)
		switch (ch) {
		case 'm':
			mflag = 1;
			break;
		case 'r':
			rflag = 1;
			break;
		case 's':
			sflag = 1;
			break;
		case 't':
			tflag = 1;
			break;
		case '?':
		default:
			FUNC4();
		}
	argc -= optind;
	argv += optind;
	if (argc > 0)
		FUNC4();

	if (!(mflag || sflag))
		mflag = 1;

	if ((mflag ^ sflag) != 1)
		FUNC4();

	if ((tflag ^ rflag) != 1)
		FUNC4();

	if (tflag)
		FUNC3();

	if (rflag)
		FUNC2();
	
	FUNC0(0);
	
}