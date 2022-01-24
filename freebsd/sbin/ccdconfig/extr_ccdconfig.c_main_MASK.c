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
#define  CCD_CONFIG 132 
#define  CCD_CONFIGALL 131 
#define  CCD_DUMP 130 
#define  CCD_UNCONFIG 129 
#define  CCD_UNCONFIGALL 128 
 int /*<<< orphan*/  ccdconf ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9(int argc, char *argv[])
{
	int ch, options = 0, action = CCD_CONFIG;

	while ((ch = FUNC4(argc, argv, "cCf:guUv")) != -1) {
		switch (ch) {
		case 'c':
			action = CCD_CONFIG;
			++options;
			break;

		case 'C':
			action = CCD_CONFIGALL;
			++options;
			break;

		case 'f':
			ccdconf = optarg;
			break;

		case 'g':
			action = CCD_DUMP;
			break;

		case 'u':
			action = CCD_UNCONFIG;
			++options;
			break;

		case 'U':
			action = CCD_UNCONFIGALL;
			++options;
			break;

		case 'v':
			verbose = 1;
			break;

		default:
			FUNC7();
		}
	}
	argc -= optind;
	argv += optind;

	if (options > 1)
		FUNC7();

	if (FUNC6("g_ccd") < 0) {
		/* Not present in kernel, try loading it */
		if (FUNC5("geom_ccd") < 0 || FUNC6("g_ccd") < 0)
			FUNC8("geom_ccd module not available!");
	}

	switch (action) {
		case CCD_CONFIG:
		case CCD_UNCONFIG:
			FUNC3(FUNC1(argc, argv, action));
			/* NOTREACHED */

		case CCD_CONFIGALL:
		case CCD_UNCONFIGALL:
			FUNC3(FUNC0(action));
			/* NOTREACHED */

		case CCD_DUMP:
			FUNC3(FUNC2(argc, argv));
			/* NOTREACHED */
	}
	/* NOTREACHED */
	return (0);
}