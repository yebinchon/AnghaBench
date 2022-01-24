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
 int /*<<< orphan*/  PAM_CONV ; 
 int /*<<< orphan*/  PAM_ESTABLISH_CRED ; 
 int /*<<< orphan*/  PAM_REINITIALIZE_CRED ; 
 scalar_t__ PAM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ sshpam_authenticated ; 
 int sshpam_cred_established ; 
 scalar_t__ sshpam_err ; 
 int /*<<< orphan*/  sshpam_handle ; 
 int /*<<< orphan*/  store_conv ; 

void
FUNC5(int init)
{
	sshpam_err = FUNC2(sshpam_handle, PAM_CONV,
	    (const void *)&store_conv);
	if (sshpam_err != PAM_SUCCESS)
		FUNC1("PAM: failed to set PAM_CONV: %s",
		    FUNC4(sshpam_handle, sshpam_err));
	if (init) {
		FUNC0("PAM: establishing credentials");
		sshpam_err = FUNC3(sshpam_handle, PAM_ESTABLISH_CRED);
	} else {
		FUNC0("PAM: reinitializing credentials");
		sshpam_err = FUNC3(sshpam_handle, PAM_REINITIALIZE_CRED);
	}
	if (sshpam_err == PAM_SUCCESS) {
		sshpam_cred_established = 1;
		return;
	}
	if (sshpam_authenticated)
		FUNC1("PAM: pam_setcred(): %s",
		    FUNC4(sshpam_handle, sshpam_err));
	else
		FUNC0("PAM: pam_setcred(): %s",
		    FUNC4(sshpam_handle, sshpam_err));
}