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
struct pam_saved_cred {scalar_t__ euid; int /*<<< orphan*/  egid; int /*<<< orphan*/  groups; int /*<<< orphan*/  ngroups; } ;
typedef  int /*<<< orphan*/  pam_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PAM_SAVED_CRED ; 
 int PAM_SUCCESS ; 
 int PAM_SYSTEM_ERR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(pam_handle_t *pamh)
{
	const struct pam_saved_cred *scred;
	const void *scredp;
	int r;

	FUNC0();
	r = FUNC3(pamh, PAM_SAVED_CRED, &scredp);
	if (r != PAM_SUCCESS)
		FUNC1(r);
	if (scredp == NULL)
		FUNC1(PAM_SYSTEM_ERR);
	scred = scredp;
	if (scred->euid != FUNC2()) {
		if (FUNC6(scred->euid) < 0 ||
		    FUNC7(scred->ngroups, scred->groups) < 0 ||
		    FUNC5(scred->egid) < 0)
			FUNC1(PAM_SYSTEM_ERR);
	}
	FUNC4(pamh, PAM_SAVED_CRED, NULL, NULL);
	FUNC1(PAM_SUCCESS);
}