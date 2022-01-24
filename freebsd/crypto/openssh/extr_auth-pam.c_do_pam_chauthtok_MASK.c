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
 int /*<<< orphan*/  PAM_CHANGE_EXPIRED_AUTHTOK ; 
 int /*<<< orphan*/  PAM_CONV ; 
 scalar_t__ PAM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ sshpam_err ; 
 int /*<<< orphan*/  sshpam_handle ; 
 int /*<<< orphan*/  tty_conv ; 
 scalar_t__ use_privsep ; 

void
FUNC5(void)
{
	if (use_privsep)
		FUNC1("Password expired (unable to change with privsep)");
	sshpam_err = FUNC3(sshpam_handle, PAM_CONV,
	    (const void *)&tty_conv);
	if (sshpam_err != PAM_SUCCESS)
		FUNC1("PAM: failed to set PAM_CONV: %s",
		    FUNC4(sshpam_handle, sshpam_err));
	FUNC0("PAM: changing password");
	sshpam_err = FUNC2(sshpam_handle, PAM_CHANGE_EXPIRED_AUTHTOK);
	if (sshpam_err != PAM_SUCCESS)
		FUNC1("PAM: pam_chauthtok(): %s",
		    FUNC4(sshpam_handle, sshpam_err));
}