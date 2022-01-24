#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; scalar_t__ (* check_prot ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  app_data ; 
 int code ; 
 char* FUNC0 (int) ; 
 TYPE_1__* mech ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  sec_complete ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 

void
FUNC9(int argc, char **argv)
{
    int level = -1;

    if(argc > 3)
	goto usage;

    if(argc == 1) {
	FUNC4();
	return;
    }
    if(!sec_complete) {
	FUNC2("No security data exchange has taken place.\n");
	code = -1;
	return;
    }
    level = FUNC1(argv[argc - 1]);

    if(level == -1)
	goto usage;

    if((*mech->check_prot)(app_data, level)) {
	FUNC2("%s does not implement %s protection.\n",
	       mech->name, FUNC0(level));
	code = -1;
	return;
    }

    if(argc == 2 || FUNC7(argv[1], "data", FUNC6(argv[1])) == 0) {
	if(FUNC3(level) < 0){
	    code = -1;
	    return;
	}
    } else if(FUNC7(argv[1], "command", FUNC6(argv[1])) == 0) {
	if(FUNC5(level) < 0) {
	    code = -1;
	    return;
	}
    } else
	goto usage;
    code = 0;
    return;
 usage:
    FUNC2("usage: %s [command|data] [clear|safe|confidential|private]\n",
	   argv[0]);
    code = -1;
}