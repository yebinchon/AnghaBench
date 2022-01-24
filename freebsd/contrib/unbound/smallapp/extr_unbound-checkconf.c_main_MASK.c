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
 char* CONFIGFILE ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (char*,char*) ; 

int FUNC8(int argc, char* argv[])
{
	int c;
	int final = 0;
	const char* f;
	const char* opt = NULL;
	const char* cfgfile = CONFIGFILE;
	FUNC4("unbound-checkconf");
	FUNC5(NULL, 0, NULL);
	FUNC1();
#ifdef USE_WINSOCK
	/* use registry config file in preference to compiletime location */
	if(!(cfgfile=w_lookup_reg_str("Software\\Unbound", "ConfigFile")))
		cfgfile = CONFIGFILE;
#endif /* USE_WINSOCK */
	/* parse the options */
	while( (c=FUNC3(argc, argv, "fho:")) != -1) {
		switch(c) {
		case 'f':
			final = 1;
			break;
		case 'o':
			opt = optarg;
			break;
		case '?':
		case 'h':
		default:
			FUNC6();
		}
	}
	argc -= optind;
	argv += optind;
	if(argc != 0 && argc != 1)
		FUNC6();
	if(argc == 1)
		f = argv[0];
	else	f = cfgfile;
	FUNC0(f, opt, final);
	FUNC2();
	return 0;
}