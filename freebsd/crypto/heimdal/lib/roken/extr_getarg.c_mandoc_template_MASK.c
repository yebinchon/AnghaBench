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
typedef  int /*<<< orphan*/  timestr ;
typedef  int /*<<< orphan*/  time_t ;
struct getargs {int short_name; char* long_name; scalar_t__ type; char* help; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct getargs) ; 
 scalar_t__ arg_negative_flag ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,struct getargs*,char* (*) (char const*)) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 char* FUNC6 (char const*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct getargs *args,
		size_t num_args,
		const char *progname,
		const char *extra_string,
		char *(i18n)(const char *))
{
    size_t i;
    char timestr[64], cmd[64];
    char buf[128];
    const char *p;
    time_t t;

    FUNC3(".\\\" Things to fix:\n");
    FUNC3(".\\\"   * correct section, and operating system\n");
    FUNC3(".\\\"   * remove Op from mandatory flags\n");
    FUNC3(".\\\"   * use better macros for arguments (like .Pa for files)\n");
    FUNC3(".\\\"\n");
    t = FUNC8(NULL);
    FUNC4(timestr, sizeof(timestr), "%B %e, %Y", FUNC1(&t));
    FUNC3(".Dd %s\n", timestr);
    p = FUNC6(progname, '/');
    if(p) p++; else p = progname;
    FUNC5(cmd, p, sizeof(cmd));
    FUNC7(cmd);

    FUNC3(".Dt %s SECTION\n", cmd);
    FUNC3(".Os OPERATING_SYSTEM\n");
    FUNC3(".Sh NAME\n");
    FUNC3(".Nm %s\n", p);
    FUNC3(".Nd in search of a description\n");
    FUNC3(".Sh SYNOPSIS\n");
    FUNC3(".Nm\n");
    for(i = 0; i < num_args; i++){
	/* we seem to hit a limit on number of arguments if doing
           short and long flags with arguments -- split on two lines */
	if(FUNC0(args[i]) ||
	   args[i].short_name == 0 || args[i].long_name == NULL) {
	    FUNC3(".Op ");

	    if(args[i].short_name) {
		FUNC2(buf, sizeof(buf), 1, 0, args + i, i18n);
		FUNC3("Fl %c%s", args[i].short_name, buf);
		if(args[i].long_name)
		    FUNC3(" | ");
	    }
	    if(args[i].long_name) {
		FUNC2(buf, sizeof(buf), 1, 1, args + i, i18n);
		FUNC3("Fl Fl %s%s%s",
		       args[i].type == arg_negative_flag ? "no-" : "",
		       args[i].long_name, buf);
	    }
	    FUNC3("\n");
	} else {
	    FUNC2(buf, sizeof(buf), 1, 0, args + i, i18n);
	    FUNC3(".Oo Fl %c%s \\*(Ba Xo\n", args[i].short_name, buf);
	    FUNC2(buf, sizeof(buf), 1, 1, args + i, i18n);
	    FUNC3(".Fl Fl %s%s\n.Xc\n.Oc\n", args[i].long_name, buf);
	}
    /*
	    if(args[i].type == arg_strings)
		fprintf (stderr, "...");
		*/
    }
    if (extra_string && *extra_string)
	FUNC3 (".Ar %s\n", extra_string);
    FUNC3(".Sh DESCRIPTION\n");
    FUNC3("Supported options:\n");
    FUNC3(".Bl -tag -width Ds\n");
    for(i = 0; i < num_args; i++){
	FUNC3(".It Xo\n");
	if(args[i].short_name){
	    FUNC3(".Fl %c", args[i].short_name);
	    FUNC2(buf, sizeof(buf), 1, 0, args + i, i18n);
	    FUNC3("%s", buf);
	    if(args[i].long_name)
		FUNC3(" ,");
	    FUNC3("\n");
	}
	if(args[i].long_name){
	    FUNC3(".Fl Fl %s%s",
		   args[i].type == arg_negative_flag ? "no-" : "",
		   args[i].long_name);
	    FUNC2(buf, sizeof(buf), 1, 1, args + i, i18n);
	    FUNC3("%s\n", buf);
	}
	FUNC3(".Xc\n");
	if(args[i].help)
	    FUNC3("%s\n", args[i].help);
    /*
	    if(args[i].type == arg_strings)
		fprintf (stderr, "...");
		*/
    }
    FUNC3(".El\n");
    FUNC3(".\\\".Sh ENVIRONMENT\n");
    FUNC3(".\\\".Sh FILES\n");
    FUNC3(".\\\".Sh EXAMPLES\n");
    FUNC3(".\\\".Sh DIAGNOSTICS\n");
    FUNC3(".\\\".Sh SEE ALSO\n");
    FUNC3(".\\\".Sh STANDARDS\n");
    FUNC3(".\\\".Sh HISTORY\n");
    FUNC3(".\\\".Sh AUTHORS\n");
    FUNC3(".\\\".Sh BUGS\n");
}