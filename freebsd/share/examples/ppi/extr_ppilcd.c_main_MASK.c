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
struct lcd_driver {int /*<<< orphan*/  l_finish; int /*<<< orphan*/  (* l_prepare ) (char*,char*) ;int /*<<< orphan*/  l_name; int /*<<< orphan*/ * l_code; } ;

/* Variables and functions */
 char* DEFAULT_DEVICE ; 
 int EOF ; 
 int /*<<< orphan*/  EX_OK ; 
 int /*<<< orphan*/  _IONBF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  debuglevel ; 
 int /*<<< orphan*/  FUNC2 (struct lcd_driver*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (int,char**,char*) ; 
 struct lcd_driver* lcd_drivertab ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int vflag ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

int
FUNC13(int argc, char *argv[]) 
{
    extern char		*optarg;
    extern int		optind;
    struct lcd_driver	*driver = &lcd_drivertab[0];
    char		*drivertype, *cp;
    char		*devname = DEFAULT_DEVICE;
    char		*drvopts = NULL;
    int			ch, i;

    if ((progname = FUNC9(argv[0], '/'))) {
	progname++;
    } else {
	progname = argv[0];
    }

    drivertype = FUNC5("LCD_TYPE");
    
    while ((ch = FUNC6(argc, argv, "Dd:f:o:v")) != -1) {
	switch(ch) {
	case 'D':
	    debuglevel++;
	    break;
	case 'd':
	    drivertype = optarg;
	    break;
	case 'f':
	    devname = optarg;
	    break;
	case 'o':
	    drvopts = optarg;
	    break;
	case 'v':
	    vflag = 1;
	    break;
	default:
	    FUNC11();
	}
    }
    argc -= optind;
    argv += optind;
    
    /* If an LCD type was specified, look it up */
    if (drivertype != NULL) {
	driver = NULL;
	for (i = 0; lcd_drivertab[i].l_code != NULL; i++) {
	    if (!FUNC8(drivertype, lcd_drivertab[i].l_code)) {
		driver = &lcd_drivertab[i];
		break;
	    }
	}
	if (driver == NULL) {
	    FUNC12("LCD driver '%s' not known", drivertype);
	    FUNC11();
	}
    }
    FUNC1(1, "Driver selected for %s", driver->l_name);
    driver->l_prepare(devname, drvopts);
    FUNC0(driver->l_finish);

    if (argc > 0) {
	FUNC1(2, "reading input from %d argument%s", argc, (argc > 1) ? "s" : "");
	for (i = 0; i < argc; i++)
	    for (cp = argv[i]; *cp; cp++)
		FUNC2(driver, *cp);
    } else {
	FUNC1(2, "reading input from stdin");
	FUNC7(stdin, NULL, _IONBF, 0);
	while ((ch = FUNC4(stdin)) != EOF)
	    FUNC2(driver, (char)ch);
    }
    FUNC3(EX_OK);
}