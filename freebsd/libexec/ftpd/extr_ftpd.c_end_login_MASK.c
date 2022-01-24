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
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  PAM_DELETE_CRED ; 
 int PAM_SUCCESS ; 
 scalar_t__ dochroot ; 
 scalar_t__ dowtmp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ guest ; 
 scalar_t__ logged_in ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * pamh ; 
 int /*<<< orphan*/ * pw ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wtmpid ; 

__attribute__((used)) static void
FUNC9(void)
{
#ifdef USE_PAM
	int e;
#endif

	(void) FUNC6(0);
#ifdef	LOGIN_CAP
	setusercontext(NULL, getpwuid(0), 0, LOGIN_SETALL & ~(LOGIN_SETLOGIN |
		       LOGIN_SETUSER | LOGIN_SETGROUP | LOGIN_SETPATH |
		       LOGIN_SETENV));
#endif
	if (logged_in && dowtmp)
		FUNC0(wtmpid, NULL, NULL);
	pw = NULL;
#ifdef USE_PAM
	if (pamh) {
		if ((e = pam_setcred(pamh, PAM_DELETE_CRED)) != PAM_SUCCESS)
			syslog(LOG_ERR, "pam_setcred: %s", pam_strerror(pamh, e));
		if ((e = pam_close_session(pamh,0)) != PAM_SUCCESS)
			syslog(LOG_ERR, "pam_close_session: %s", pam_strerror(pamh, e));
		if ((e = pam_end(pamh, e)) != PAM_SUCCESS)
			syslog(LOG_ERR, "pam_end: %s", pam_strerror(pamh, e));
		pamh = NULL;
	}
#endif
	logged_in = 0;
	guest = 0;
	dochroot = 0;
}