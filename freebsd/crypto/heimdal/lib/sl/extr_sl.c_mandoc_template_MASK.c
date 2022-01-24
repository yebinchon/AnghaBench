#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timestr ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_3__ {char* name; char* usage; scalar_t__ func; } ;
typedef  TYPE_1__ SL_cmd ;

/* Variables and functions */
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(SL_cmd *cmds,
		const char *extra_string)
{
    SL_cmd *c, *prev;
    char timestr[64], cmd[64];
    const char *p;
    time_t t;

    FUNC2(".\\\" Things to fix:\n");
    FUNC2(".\\\"   * correct section, and operating system\n");
    FUNC2(".\\\"   * remove Op from mandatory flags\n");
    FUNC2(".\\\"   * use better macros for arguments (like .Pa for files)\n");
    FUNC2(".\\\"\n");
    t = FUNC7(NULL);
    FUNC3(timestr, sizeof(timestr), "%b %d, %Y", FUNC1(&t));
    FUNC2(".Dd %s\n", timestr);
    p = FUNC5(FUNC0(), '/');
    if(p) p++; else p = FUNC0();
    FUNC4(cmd, p, sizeof(cmd));
    cmd[sizeof(cmd)-1] = '\0';
    FUNC6(cmd);

    FUNC2(".Dt %s SECTION\n", cmd);
    FUNC2(".Os OPERATING_SYSTEM\n");
    FUNC2(".Sh NAME\n");
    FUNC2(".Nm %s\n", p);
    FUNC2(".Nd\n");
    FUNC2("in search of a description\n");
    FUNC2(".Sh SYNOPSIS\n");
    FUNC2(".Nm\n");
    for(c = cmds; c->name; ++c) {
/*	if (c->func == NULL)
	    continue; */
	FUNC2(".Op Fl %s", c->name);
	FUNC2("\n");

    }
    if (extra_string && *extra_string)
	FUNC2 (".Ar %s\n", extra_string);
    FUNC2(".Sh DESCRIPTION\n");
    FUNC2("Supported options:\n");
    FUNC2(".Bl -tag -width Ds\n");
    prev = NULL;
    for(c = cmds; c->name; ++c) {
	if (c->func) {
	    if (prev)
		FUNC2 ("\n%s\n", prev->usage);

	    FUNC2 (".It Fl %s", c->name);
	    prev = c;
	} else
	    FUNC2 (", %s\n", c->name);
    }
    if (prev)
	FUNC2 ("\n%s\n", prev->usage);

    FUNC2(".El\n");
    FUNC2(".\\\".Sh ENVIRONMENT\n");
    FUNC2(".\\\".Sh FILES\n");
    FUNC2(".\\\".Sh EXAMPLES\n");
    FUNC2(".\\\".Sh DIAGNOSTICS\n");
    FUNC2(".\\\".Sh SEE ALSO\n");
    FUNC2(".\\\".Sh STANDARDS\n");
    FUNC2(".\\\".Sh HISTORY\n");
    FUNC2(".\\\".Sh AUTHORS\n");
    FUNC2(".\\\".Sh BUGS\n");
}