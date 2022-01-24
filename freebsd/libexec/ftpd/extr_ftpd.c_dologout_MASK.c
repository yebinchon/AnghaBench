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
 int LOGIN_SETALL ; 
 int LOGIN_SETENV ; 
 int LOGIN_SETGROUP ; 
 int LOGIN_SETLOGIN ; 
 int LOGIN_SETPATH ; 
 int LOGIN_SETUSER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ dowtmp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ logged_in ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wtmpid ; 

void
FUNC5(int status)
{

	if (logged_in && dowtmp) {
		(void) FUNC3(0);
#ifdef		LOGIN_CAP
 	        setusercontext(NULL, getpwuid(0), 0, LOGIN_SETALL & ~(LOGIN_SETLOGIN |
		       LOGIN_SETUSER | LOGIN_SETGROUP | LOGIN_SETPATH |
		       LOGIN_SETENV));
#endif
		FUNC1(wtmpid, NULL, NULL);
	}
	/* beware of flushing buffers after a SIGPIPE */
	FUNC0(status);
}