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
 int LOG_DAEMON ; 
 int LOG_INFO ; 
 int LOG_KERN ; 
 int LOG_LOCAL4 ; 
 int LOG_MAIL ; 
 int LOG_NOTICE ; 
 int /*<<< orphan*/  LOG_PERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  test_syslog_close ; 
 int /*<<< orphan*/  test_syslog_open ; 
 int /*<<< orphan*/  test_syslog_send ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char**) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,char*,...) ; 

int
FUNC13 (int argc, char **argv)
{
    int unit_test = 1;
    int fire = 0;
    const char *tzone = "EST";

    argc = FUNC6(argc, argv);
    if (argc < 0)
	return 1;

    for (argc = 1; argv[argc]; argc++) {
	if (FUNC11(argv[argc], "full"))
	    unit_test = 0;
	else if (FUNC11(argv[argc], "fire"))
	    fire = 1;
	else if (FUNC11(argv[argc], "tz"))
	    tzone = argv[++argc];
    }

    FUNC0("TZ", tzone, 1);
    FUNC1();

    if (!fire) {
	FUNC8(test_syslog_open, test_syslog_send,
			      test_syslog_close);
    }

    if (unit_test) {
	FUNC9(1);
	FUNC5("test-program", LOG_PERROR, 0);
    }

    FUNC10("3.1.4");
    FUNC7(42); /* SunOs */

    FUNC4(NULL, "top");

    FUNC12(LOG_INFO | LOG_KERN, "animal-status",
	      "The {:animal} is {:state}", "snake", "loose");
    FUNC12(LOG_INFO | LOG_MAIL, "animal-consumed",
	      "My {:animal} ate your {:pet}", "snake", "hamster");
    FUNC12(LOG_NOTICE | LOG_DAEMON, "animal-talk",
	      "{:count/%d} {:animal} said {:quote}", 1, "owl", "\"e=m\\c[2]\"");

    /*
      <165>1 2003-10-11T22:14:15.003Z mymachine.example.com
           evntslog - ID47 [exampleSDID@32473 iut="3" eventSource=
           "Application" eventID="1011"] BOMAn application
           event log entry...

   This example is modeled after Example 1.  However, this time it
   contains STRUCTURED-DATA, a single element with the value
   "[exampleSDID@32473 iut="3" eventSource="Application"
   eventID="1011"]".  The MSG itself is "An application event log
   entry..."  The BOM at the beginning of MSG indicates UTF-8 encoding.
    */

    FUNC7(32473);
    FUNC12(LOG_LOCAL4 | LOG_NOTICE, "ID47",
	      "{e:iut/%u}An {:event-source} {:event-id/%u} log entry",
	      3, "application", 1011);

    FUNC2(NULL, "top");

    FUNC3();

    return 0;
}