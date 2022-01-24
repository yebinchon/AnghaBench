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
typedef  int /*<<< orphan*/  TERMTYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int,int,int,int,int,int,int,int,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ _nc_tparm_err ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  set_attributes ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 

__attribute__((used)) static char *
FUNC6(TERMTYPE *tp, char *zero, int num, char *cap, const char *name)
{
    char *test;

    _nc_tparm_err = 0;
    test = FUNC1(set_attributes,
		   num == 1,
		   num == 2,
		   num == 3,
		   num == 4,
		   num == 5,
		   num == 6,
		   num == 7,
		   num == 8,
		   num == 9);
    if (test != 0) {
	if (FUNC0(cap)) {
	    if (!FUNC5(num, test, cap)) {
		FUNC4("%s differs from sgr(%d)\n\t%s=%s\n\tsgr(%d)=%s",
			    name, num,
			    name, FUNC3(1, cap),
			    num, FUNC3(2, test));
	    }
	} else if (FUNC2(test, zero)) {
	    FUNC4("sgr(%d) present, but not %s", num, name);
	}
    } else if (FUNC0(cap)) {
	FUNC4("sgr(%d) missing, but %s present", num, name);
    }
    if (_nc_tparm_err)
	FUNC4("stack error in sgr(%d) string", num);
    return test;
}