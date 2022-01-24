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
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 

void
FUNC6(int argc, char **argv)
{
    int level;

    if(argc > 2)
	goto usage;

    if(!sec_complete) {
	FUNC2("No security data exchange has taken place.\n");
	code = -1;
	return;
    }

    if(argc == 1) {
	FUNC3();
    } else {
	level = FUNC1(argv[1]);
	if(level == -1)
	    goto usage;

	if((*mech->check_prot)(app_data, level)) {
	    FUNC2("%s does not implement %s protection.\n",
		   mech->name, FUNC0(level));
	    code = -1;
	    return;
	}
	if(FUNC4(level) < 0) {
	    code = -1;
	    return;
	}
    }
    code = 0;
    return;
 usage:
    FUNC2("usage: %s [clear|safe|confidential|private]\n",
	   argv[0]);
    code = -1;
}