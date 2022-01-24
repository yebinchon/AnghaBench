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
typedef  int /*<<< orphan*/  temp ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* _nc_progname ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

__attribute__((used)) static void
FUNC6(const char *msg)
{
    char temp[BUFSIZ];
    size_t len = FUNC4(_nc_progname) + 2;

    if ((int) len < (int) sizeof(temp) - 12) {
	FUNC1(temp, _nc_progname, sizeof(temp));
	FUNC0(temp, ": ", sizeof(temp));
    } else {
	FUNC1(temp, "tset: ", sizeof(temp));
    }
    FUNC3(FUNC5(temp, msg, sizeof(temp) - FUNC4(temp) - 2));
    FUNC2();
    /* NOTREACHED */
}