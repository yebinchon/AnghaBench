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
struct passwd {scalar_t__ pw_uid; int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_name; } ;
struct pam_saved_cred {int ngroups; int /*<<< orphan*/  groups; int /*<<< orphan*/  egid; scalar_t__ euid; } ;
typedef  int /*<<< orphan*/  pam_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pam_saved_cred*) ; 
 int /*<<< orphan*/  NGROUPS_MAX ; 
 int PAM_BUF_ERR ; 
 int /*<<< orphan*/  PAM_LOG_LIBDEBUG ; 
 int PAM_PERM_DENIED ; 
 int /*<<< orphan*/  PAM_SAVED_CRED ; 
 int PAM_SUCCESS ; 
 int PAM_SYSTEM_ERR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct pam_saved_cred* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  openpam_free_data ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const**) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pam_saved_cred*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

int
FUNC14(pam_handle_t *pamh,
	const struct passwd *pwd)
{
	struct pam_saved_cred *scred;
	const void *scredp;
	int r;

	FUNC0(pwd->pw_uid);
	r = FUNC10(pamh, PAM_SAVED_CRED, &scredp);
	if (r == PAM_SUCCESS && scredp != NULL) {
		FUNC8(PAM_LOG_LIBDEBUG,
		    "already operating under borrowed credentials");
		FUNC2(PAM_SYSTEM_ERR);
	}
	if (FUNC5() != 0 && FUNC5() != pwd->pw_uid) {
		FUNC8(PAM_LOG_LIBDEBUG, "called with non-zero euid: %d",
		    (int)FUNC5());
		FUNC2(PAM_PERM_DENIED);
	}
	scred = FUNC3(1, sizeof *scred);
	if (scred == NULL)
		FUNC2(PAM_BUF_ERR);
	scred->euid = FUNC5();
	scred->egid = FUNC4();
	r = FUNC6(NGROUPS_MAX, scred->groups);
	if (r < 0) {
		FUNC1(scred);
		FUNC2(PAM_SYSTEM_ERR);
	}
	scred->ngroups = r;
	r = FUNC11(pamh, PAM_SAVED_CRED, scred, &openpam_free_data);
	if (r != PAM_SUCCESS) {
		FUNC1(scred);
		FUNC2(r);
	}
	if (FUNC5() == pwd->pw_uid)
		FUNC2(PAM_SUCCESS);
	if (FUNC7(pwd->pw_name, pwd->pw_gid) < 0 ||
	      FUNC12(pwd->pw_gid) < 0 || FUNC13(pwd->pw_uid) < 0) {
		FUNC9(pamh);
		FUNC2(PAM_SYSTEM_ERR);
	}
	FUNC2(PAM_SUCCESS);
}